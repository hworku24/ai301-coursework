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
