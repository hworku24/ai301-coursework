# Unit 2 — Claim and Reproduce

Path: `beat-1-sandbox/unit-2/reproduction.md`

The claim and reproduction are posted, and the evidence below comes from actual commands in my fork. **The official Claude Code evaluation is pending Thursday; `eval-run.txt` is still the original placeholder.** I used Codex while Claude Code reported its spending limit, and paused further Claude requests as planned. The supplementary reviews use the installed skill but are not Claude Code executions.

## Your identity upstream

**GitHub username**

hworku24

## Posted upstream

**Claim comment**

https://github.com/codepath/pathreview-ai301-fa26-s3/issues/57#issuecomment-5905431269

I’m investigating #57 for CodePath AI301: `TechDetector` counts JavaScript under `node_modules/` and `build/`, which can affect language detection. I’ll run the issue’s eight-file example in my fork, inspect the returned language counts, and check `test_node_modules_excluded` and `test_build_directory_excluded`. I’ll post a report with the checkout revision, environment, commands, and observed output, including any differences from the issue’s expected result.

AI assistance: Codex helped draft this claim and will help execute and document the investigation; I’m not claiming a reproduction or a fix yet.


**Reproduction comment**

https://github.com/codepath/pathreview-ai301-fa26-s3/issues/57#issuecomment-5905615150

Reproduced #57 in an unchanged checkout of my fork.

**Environment and code state**

- macOS 26.5.1 (build 25F80), arm64; Python 3.14.6, structlog 26.1.0, pytest 9.1.1.
- Fork: https://github.com/hworku24/pathreview-ai301-fa26-s3
- Commit: `2f4e82f52efbcfcc57d65b3fa5348672163ca088`; `git status --short` was empty and `git diff HEAD --` showed no changes after testing.
- I used the virtual-environment approach from `docs/SETUP.md` / `Makefile`, restricted to the dependencies needed by this local tool and its tests. No database, Docker, frontend, API key or full application was used; this report covers the local `TechDetector` path only. PyYAML 6.0.3 was also installed for validating the course skill, but is not used by the reproduction.

**Rerun from a fresh checkout**

```bash
git clone https://github.com/hworku24/pathreview-ai301-fa26-s3.git
cd pathreview-ai301-fa26-s3
git checkout --detach 2f4e82f52efbcfcc57d65b3fa5348672163ca088
python3 --version  # tested with Python 3.14.6
python3 -m venv .venv
.venv/bin/python -m pip install structlog==26.1.0 pytest==9.1.1
```

From that checkout root, run the following. The first case is exactly the eight paths in the issue; the others isolate each directory and provide controls. Only informational logging is suppressed, not detector logic.

```bash
.venv/bin/python - <<'PY'
"""Read-only reproduction of issue #57; run from the pinned Path Review checkout."""
import json
import logging

import structlog

from agent.tools.tech_detector import TechDetector

# Hide nondeterministic informational log timestamps; do not change detector logic.
structlog.configure(wrapper_class=structlog.make_filtering_bound_logger(logging.WARNING))
detector = TechDetector()
source = ["main.py", "core/app.py"]
vendored = [
    "node_modules/lib/index.js", "node_modules/lib/util.js",
    "node_modules/x/a.js", "node_modules/y/b.js",
]
build = ["build/bundle.js", "build/vendor.js"]
cases = {
    "issue_exact": source + vendored + build,
    "source_only_control": source,
    "node_modules_only": source + vendored,
    "build_only": source + build,
    "nested_paths_control": source + ["repo/" + p for p in vendored + build],
    "first_party_js_control": source + ["app.js"],
}
for name, files in cases.items():
    result = detector.execute({"files": files})
    print(name + ": " + json.dumps({"success": result.success, **result.data}, sort_keys=True))
for path in ["node_modules/lib/index.js", "build/bundle.js",
             "repo/node_modules/lib/index.js", "repo/build/bundle.js"]:
    print(f"skip({path!r}): {detector._should_skip_file(path)}")
PY
```

**Observed output**

```text
issue_exact: {"all_languages": ["JavaScript", "Python"], "frameworks": [], "primary_language": "JavaScript", "success": true}
source_only_control: {"all_languages": ["Python"], "frameworks": [], "primary_language": "Python", "success": true}
node_modules_only: {"all_languages": ["JavaScript", "Python"], "frameworks": [], "primary_language": "JavaScript", "success": true}
build_only: {"all_languages": ["JavaScript", "Python"], "frameworks": [], "primary_language": "JavaScript", "success": true}
nested_paths_control: {"all_languages": ["Python"], "frameworks": [], "primary_language": "Python", "success": true}
first_party_js_control: {"all_languages": ["JavaScript", "Python"], "frameworks": [], "primary_language": "JavaScript", "success": true}
skip('node_modules/lib/index.js'): False
skip('build/bundle.js'): False
skip('repo/node_modules/lib/index.js'): True
skip('repo/build/bundle.js'): True
```

Expected: the issue's input should exclude the six vendored/build-output JavaScript paths, leaving `all_languages=["Python"]` and `primary_language="Python"`. Actual: those paths contribute JavaScript and the returned primary language is JavaScript. Either root-level directory alone is sufficient to show the problem; the source-only control returns Python. Prefixing the excluded paths with `repo/` makes the existing skip check exclude them.

**Existing regression tests**

```bash
.venv/bin/python -m pytest tests/unit/test_tech_detector.py -q -rx
# exit 0: 25 passed, 2 xfailed
.venv/bin/python -m pytest tests/unit/test_tech_detector.py \
  -k 'test_node_modules_excluded or test_build_directory_excluded' \
  --runxfail -q --tb=short
# exit 1: 2 failed, 25 deselected
```

The second command disables expected-failure handling without editing the test markers. Both actual failures are:

```text
test_node_modules_excluded, tests/unit/test_tech_detector.py:81:
    assert data["primary_language"] == "Python"
E   AssertionError: assert 'JavaScript' == 'Python'

test_build_directory_excluded, tests/unit/test_tech_detector.py:111:
    assert data["primary_language"] == "Python"
E   AssertionError: assert 'JavaScript' == 'Python'
```

**Interpretation and limits**

The relevant source is `agent/tools/tech_detector.py::_should_skip_file`: its patterns include `/node_modules/` and `/build/`, so root-relative paths without the initial slash do not match. The observed skip results support this explanation.

There is also a separate behavior: `_detect_tech` collects languages in a set and takes the first sorted language; it does not return per-language file counts or select the majority. The first-party-JavaScript control still returns JavaScript with two Python files and one JavaScript file. Therefore this report confirms root-level exclusion and the issue's reported output, but does not claim that majority counting is implemented or that this is the only language-selection defect. No fix, marker removal or full-application test was performed.

AI assistance: Codex helped draft this report and execute the recorded commands in my local fork. These are actual outputs from that environment, not an independent manual verification by me or a copy of another student's reproduction.


## Eval iterations

**Run history**

1. Prepared rubric version 1, the evidence guide and the voice guide in the canonical installed `~/.claude/skills/repro-check/` directory. Copied the five skill files to `tools/repro-check/`. Filled only the cohort repository placeholder in the staff scope file using the established Unit 1 repository. The supplied SKILL.md and harness were not changed.
2. Local preflight: the original harness's checks recognized filled checks, verdict prose and evidence-guide content (`True` for all three); the skill validator reported `Skill is valid!`. These checks are not scored evaluations.
3. During setup, a minimal Claude availability check returned `You've hit your individual spend limit · run /usage-credits to ask your admin for a higher limit`. It was not an eval run. At my request, further Claude calls were paused until Thursday; no official Unit 2 harness run or official agreement line exists yet.
4. Supplementary Codex full frozen-package review: **19/20 agreement**; clear-accept 7/8; wrong-target 4/4; no-evidence 4/4; unfollowable-comms 3/3; disclosure 1/1. This is a manual Codex review, not the course harness. All 140 check judgments are in `codex-package-review.json`; the four calibration packages are excluded. Judgments were recorded before loading the Unit 2 gold labels. No rubric revision or targeted/canary rerun followed.

The official history is still incomplete. After Thursday's full run, append the actual harness agreement/category lines and update this analysis from its results. The final official score must match the harness-written `eval-run.txt`; do not copy the supplementary score into it or hand-edit that file.

**Package analysis**

Scored package **pkg-02**: the supplementary Codex verdict is `reject`, and the instructor gold verdict is `reject`. The issue's input is `--line-range ':-18446744073709551614'`, producing `capacity overflow` and exit 101. The candidate instead runs `--line-range '18446744073709551614:'`, gets `Invalid value for '--line-range'` and exit 1, and calls that a confirmed crash. The input and error identify an adjacent validation path, so `issue_alignment` and `honest_outcome` fail. A nonzero exit code alone is not proof of the reported capacity-overflow panic. These are actual Codex judgments; the official Sonnet verdict remains pending.

**Check rationale**

Exact current row from `tools/repro-check/rubric.md`:

```text
| issue_alignment | Issue body and thread clarifications compared with the report's trigger, expected/actual comparison and artifacts. | The attempted trigger and observed comparison address the issue's reported behavior, not an adjacent defect or an earlier setup failure. A report can pass with cannot-reproduce when it actually exercises the relevant trigger and shows the expected behavior. A setup failure alone does not test the issue. Differences in environment and limits of coverage are made explicit. | required |
```

I chose a behavior comparison rather than a check for a traceback or nonzero exit. Package pkg-02 has both polished explanations and output, but they demonstrate the wrong path. This rule also accepts an honest cannot-reproduce when the relevant trigger was exercised and its outcome is shown. It informed my live report: I ran the issue's exact eight paths, showed the root-directory controls and kept the separate alphabetical-language behavior distinct from the exclusion bug.

**Trade-offs**

The strict `rerunnable_steps` rule rejected **pkg-05** in the Codex review because the actual YAML fixture is not pasted, even though the category section and valid dependencies are described and the stdout failure is clear. Gold accepts it. Exact-input requirements improve repeatability but can reject useful concise reports. I kept the current rule unchanged rather than silently relaxing it after seeing gold; the official run should test how Sonnet interprets it. If I loosen a rule later, I will run targeted checks and include the disclosure package pkg-20 as a canary whenever that change could affect disclosure. No such rerun has happened yet.

## Evidence and next step

The claim was posted at 2026-09-30T06:25:10Z, before the local reproduction at 2026-09-30T06:35:06Z. The report was posted at 2026-09-30T06:38:45Z. Both posted bodies were retrieved from GitHub and compared with the drafts before being pasted above.

- `evidence/`: executable reproduction, actual stdout, test failures, environment, dependency versions and command/exit-code record.
- `claim-review-codex.md` and `reproduction-review-codex.md`: skill checks performed before each comment was posted, both accepted. They are not prescribed Claude Code live runs.
- `codex-package-review.md` and `.json`: supplementary full review and its one disagreement.
- `THURSDAY.md` and `run-official-eval.sh`: exact commands to produce the required official transcript and inspect live drafts using Claude Code after access returns.

No fix was implemented, no expected-failure marker was removed, and the fork's tracked code remained clean at the recorded SHA. Unit 3 can start from this proof.
