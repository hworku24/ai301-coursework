# Unit 1 — Issue Selection

Path: `beat-1-sandbox/unit-1/selection.md`

**Submission status: blocked by the course account’s individual spend limit.** The official full Sonnet evaluation was attempted after successful Claude Code authentication, but all 20 items errored before receiving verdicts. The live output below remains the disclosed Codex review, not the prescribed Claude Code run. Reflections use the student’s confirmed experience and time budget with AI assistance.

---

## Selected issue

**Issue link**

https://github.com/codepath/pathreview-ai301-fa26-s3/issues/57

Tech detector counts vendored and build-output files, skewing language detection.

**Verdict output**

The following is copied verbatim from `live-review-codex.md`. The selected issue's verdict is `accept`. This is a Codex execution of the skill, not a Claude Code execution; acceptance of this substitution must not be assumed.

issue-select live review — 2026-09-29

Executor: Codex, applying the installed issue-select skill directly at the student's request. This is not Claude Code output and is not a Sonnet harness evaluation. Evidence was fetched from GitHub on 2026-09-29; implementation and reproduction have not been performed by this review.

Scope: codepath/pathreview-ai301-fa26-s3. Student claim comments are ignored under the Path Review house rule. Assignees and open implementation PRs remain gates under the current rubric. No issue was claimed or commented on.

Required checks: maintainer_alive, repository_active, bounded_scope, available_to_contribute, ai_policy_compatible. Preferred checks: verification_path, newcomer_guidance. Verdict rule: accept only when every required check passes; a required fail or unclear rejects. Preferred checks and fit affect ranking only.

Accepted candidates, in fit order:
1. #57 — accept. A Python path-filtering bug with an explicit reproduction and two named regression tests; it uses the student's Python experience and offers room for investigation and tests within the 6–10 hour budget. Implementation time is a planning judgment, not a measured result.
2. #70 — accept. A Python fixture-indentation correction with a stated 2–4 hour estimate, leaving room for setup and checking other consumers of the shared fixture.
3. #63 — accept. A bounded Python test-fixture correction with a named failing assertion; it offers practice aligning fixtures and assertions, but less production-code investigation than #57.

Rejected candidates in this three-issue review: none.

Common evidence: repository metadata and the last five default-branch commits, the releases API, the complete contributor guide and PR template, the README-linked setup guide, and five recently updated issue threads. The threads sampled were #16, #73, #72, #68, and #61; none had an OWNER/MEMBER/COLLABORATOR response. Maintenance passes on recent human commits, not on an invented response-time claim. For each candidate, the complete comment thread, assignees, linked PRs, timeline, and the repository's ten open PRs were inspected.

Evidence locations:
- https://github.com/codepath/pathreview-ai301-fa26-s3/commit/2f4e82f52efbcfcc57d65b3fa5348672163ca088
- https://github.com/codepath/pathreview-ai301-fa26-s3/blob/main/docs/CONTRIBUTING.md
- https://github.com/codepath/pathreview-ai301-fa26-s3/blob/main/.github/PULL_REQUEST_TEMPLATE.md
- https://github.com/codepath/pathreview-ai301-fa26-s3/issues/57
- https://github.com/codepath/pathreview-ai301-fa26-s3/issues/70
- https://github.com/codepath/pathreview-ai301-fa26-s3/issues/63

```json
[
  {
    "item": "https://github.com/codepath/pathreview-ai301-fa26-s3/issues/57",
    "checks": [
      {
        "name": "maintainer_alive",
        "grade": "pass",
        "evidence": "The last five default-branch commits include human author Andrew Burke (Aburke225); commit 2f4e82f52efbcfcc57d65b3fa5348672163ca088 is dated 2026-09-16, 13 calendar days before this 2026-09-29 review, within 180 days. The five sampled issue threads have no maintainer replies, so the commit alternative supplies the pass."
      },
      {
        "name": "repository_active",
        "grade": "pass",
        "evidence": "GitHub repository metadata reports archived=false. Default-branch commit 2f4e82f52efbcfcc57d65b3fa5348672163ca088 is dated 2026-09-16, within 180 days. The releases API returns no releases, which the commit alternative permits."
      },
      {
        "name": "bounded_scope",
        "grade": "pass",
        "evidence": "Issue #57 requests one Python path-filtering fix in agent/tools/tech_detector.py; it names node_modules/ and build/ exclusions and two regression tests. No design dispute or architecture redesign appears in the five comments."
      },
      {
        "name": "available_to_contribute",
        "grade": "pass",
        "evidence": "Issue #57 is open with 0 assignees and 0 linked PRs; timeline, all five comments, and all 10 open repository PRs reveal no implementation PR. Student claim comments are ignored under scope.md."
      },
      {
        "name": "ai_policy_compatible",
        "grade": "pass",
        "evidence": "The README-linked docs/CONTRIBUTING.md, docs/SETUP.md, and .github/PULL_REQUEST_TEMPLATE.md contain no AI-specific restriction; the recursive repository tree contains no dedicated AI policy. Contribution rules require relevant tests, green CI, and removal of the specific fixed bug's xfail markers."
      },
      {
        "name": "verification_path",
        "grade": "pass",
        "evidence": "Issue #57 gives an eight-file reproduction whose expected primary language is Python and names test_node_modules_excluded and test_build_directory_excluded in tests/unit/test_tech_detector.py."
      },
      {
        "name": "newcomer_guidance",
        "grade": "pass",
        "evidence": "Issue #57 carries good first issue and tier-1 labels and names agent/tools/tech_detector.py and its regression tests."
      }
    ],
    "verdict": "accept"
  },
  {
    "item": "https://github.com/codepath/pathreview-ai301-fa26-s3/issues/70",
    "checks": [
      {
        "name": "maintainer_alive",
        "grade": "pass",
        "evidence": "The last five default-branch commits include human author Andrew Burke (Aburke225); commit 2f4e82f52efbcfcc57d65b3fa5348672163ca088 is dated 2026-09-16, 13 calendar days before this 2026-09-29 review, within 180 days. The five sampled issue threads have no maintainer replies, so the commit alternative supplies the pass."
      },
      {
        "name": "repository_active",
        "grade": "pass",
        "evidence": "GitHub repository metadata reports archived=false. Default-branch commit 2f4e82f52efbcfcc57d65b3fa5348672163ca088 is dated 2026-09-16, within 180 days. The releases API returns no releases, which the commit alternative permits."
      },
      {
        "name": "bounded_scope",
        "grade": "pass",
        "evidence": "Issue #70 requests one fixture-indentation correction for sample_readme_text and removal of its covering xfail marker; it names the affected fixture, test, and parser, estimates 2–4 hours, and has no comments or design dispute."
      },
      {
        "name": "available_to_contribute",
        "grade": "pass",
        "evidence": "Issue #70 is open with 0 assignees, 0 comments, and 0 linked PRs; its timeline and all 10 open repository PRs reveal no implementation PR."
      },
      {
        "name": "ai_policy_compatible",
        "grade": "pass",
        "evidence": "The README-linked docs/CONTRIBUTING.md, docs/SETUP.md, and .github/PULL_REQUEST_TEMPLATE.md contain no AI-specific restriction; the recursive repository tree contains no dedicated AI policy. Contribution rules require relevant tests, green CI, and removal of the specific fixed bug's xfail markers."
      },
      {
        "name": "verification_path",
        "grade": "pass",
        "evidence": "Issue #70 names test_parse_standard_readme and its heading_count > 0 assertion, and requires removal of the H-03 xfail marker after the correction; Makefile provides make test-unit."
      },
      {
        "name": "newcomer_guidance",
        "grade": "pass",
        "evidence": "Issue #70 identifies tests/conftest.py, tests/unit/test_readme_parser.py, ingestion/parsers/readme_parser.py, and the sample_readme_text fixture."
      }
    ],
    "verdict": "accept"
  },
  {
    "item": "https://github.com/codepath/pathreview-ai301-fa26-s3/issues/63",
    "checks": [
      {
        "name": "maintainer_alive",
        "grade": "pass",
        "evidence": "The last five default-branch commits include human author Andrew Burke (Aburke225); commit 2f4e82f52efbcfcc57d65b3fa5348672163ca088 is dated 2026-09-16, 13 calendar days before this 2026-09-29 review, within 180 days. The five sampled issue threads have no maintainer replies, so the commit alternative supplies the pass."
      },
      {
        "name": "repository_active",
        "grade": "pass",
        "evidence": "GitHub repository metadata reports archived=false. Default-branch commit 2f4e82f52efbcfcc57d65b3fa5348672163ca088 is dated 2026-09-16, within 180 days. The releases API returns no releases, which the commit alternative permits."
      },
      {
        "name": "bounded_scope",
        "grade": "pass",
        "evidence": "Issue #63 requests one README test-fixture correction so test_readme_with_all_quality_signals agrees with the word-count category it asserts. Its two comments report investigation and reproduction, without a design dispute."
      },
      {
        "name": "available_to_contribute",
        "grade": "pass",
        "evidence": "Issue #63 is open with 0 assignees and 0 linked PRs; its two comments, timeline, and all 10 open repository PRs reveal no implementation PR. Its student claim comment is ignored under scope.md."
      },
      {
        "name": "ai_policy_compatible",
        "grade": "pass",
        "evidence": "The README-linked docs/CONTRIBUTING.md, docs/SETUP.md, and .github/PULL_REQUEST_TEMPLATE.md contain no AI-specific restriction; the recursive repository tree contains no dedicated AI policy. Contribution rules require relevant tests, green CI, and removal of the specific fixed bug's xfail markers."
      },
      {
        "name": "verification_path",
        "grade": "pass",
        "evidence": "Issue #63 supplies pytest tests/unit/test_readme_scorer.py -q and names test_readme_with_all_quality_signals with word-count/category assertions; the thread documents its strict xfail behavior."
      },
      {
        "name": "newcomer_guidance",
        "grade": "pass",
        "evidence": "Issue #63 carries good first issue and tier-1 labels and names tests/unit/test_readme_scorer.py and test_readme_with_all_quality_signals."
      }
    ],
    "verdict": "accept"
  }
]
```

---

## Eval iterations

**Run history**

1. Prepared rubric version 1. Local format preflight reported `Harness recognizes filled rubric: True`, with 5 required checks and 2 preferred checks. This was not a scored run.
2. **Official full evaluation attempt 1, 2026-09-29:** ran the unchanged course harness with the installed rubric and skill, all 20 scored bundles, and `--save-run`. The actual agreement line was `agreement: 0/0 scored items`. All 20 items returned `ERROR (claude exited 1: )`; no item received a verdict. The `0/0` reports no successfully scored items, not 0 correct out of 20. The harness refused to write the submission transcript and preserved the original placeholder.
3. A direct diagnostic using the same `sonnet` model returned: `You've hit your individual spend limit · run /usage-credits to ask your admin for a higher limit`. Authentication had succeeded. No further model calls or retries were made after identifying the limit, and the rubric was not changed in response to this infrastructure failure.

No successful full run or category-floor result exists yet. Once the account administrator restores inference access, rerun the full harness and append its exact agreement line here. The last successful score must match the generated `eval-run.txt`; never hand-edit that transcript. The earlier Codex live review and manual snapshot analysis are not harness runs.

**Issue analysis**

Scored item: `issue-12`, the frozen BookWyrm issue captured on 2026-08-12. Actual result in official attempt 1: `ERROR`, with `verdict: null` and `error: "claude exited 1: "`; the account limit prevented the model from making a decision. Instructor gold label in `eval/gold-labels.json`: `reject`. Separately, manual application of the current rubric by Codex gives `reject`. This manual decision is not substituted for the missing harness verdict.

The decisive snapshot quote is: "We do not accept AI-generated code or documentation." That is an explicit ban applicable to a contribution that uses AI-generated code or documentation, so `ai_policy_compatible` fails for the planned AI-assisted generation workflow. Its required weight makes the verdict `reject` regardless of the issue's beginner label, recent commits, or otherwise bounded progress-bar request. This analysis uses the frozen policy entry, not the current public BookWyrm site. It demonstrates a real check application but is not evidence of a completed evaluation run.

**Check rationale**

The exact current row in `tools/issue-select/rubric.md` is:

```text
| ai_policy_compatible | Eval: the contribution-policy entry in Repo facts. Live: root and .github/ CONTRIBUTING files, linked contributor rules, AI_POLICY.md or AI_USAGE_POLICY.md if present, and PR-template disclosure requirements. | The inspected policy does not ban the planned AI-assisted contribution. Explicitly permitted assistive use passes even when fully AI-generated submissions are prohibited. Disclosure, human review, understanding, and testing requirements pass and must be recorded for later compliance. A confirmed absence of AI-specific restrictions passes; an unreadable or uninspected policy is unclear. | required |
```

This check is required because a technically suitable issue is still unsuitable when the intended contribution would violate the repository's stated policy. The source column identifies where the policy must be read. Explicit permission for assistive use is distinguished from an outright prohibition, while review and testing conditions remain obligations. This avoids incorrectly treating every mention of AI as a ban. An unread policy is `unclear`; it is not treated as policy silence.

**Trade-offs**

The quoted check deliberately accepts policies with disclosure, review, understanding, or testing conditions, even though the issue-selection stage cannot verify that those future obligations will be fulfilled. That permits useful contributions but leaves a later compliance responsibility. Conversely, genuinely unavailable policy evidence rejects a candidate and may miss a project that would have welcomed assistance. The 2026-08-12 snapshot for `issue-12` is rejected by manual application of this check; the attempted Sonnet run produced only errors, so it does not establish the check’s effect on the complete set. Policy can change, so it should be rechecked before a contribution is submitted.

---

## Selection rationale

**Selection rationale**

1. **Fit and available time.** I have used SQL, Java, and Python, and I can spend about 6–10 hours on Unit 2. Issue #57 is a focused Python bug with a reproduction example and two named regression tests. It should leave room for setup, investigation, and testing. I also want to improve C and C++, but this issue builds on my Python experience.
2. **What the verdict captured and what I weighed.** The disclosed Codex review identified recent human commits, a bounded change, named tests, and no blocking assignee or open implementation PR when checked. It correctly ignored classmates’ claim comments under the classroom rule. I also valued the chance to practice Python path handling. The code already has a filter, but its patterns require a leading slash; Unit 2 should verify that diagnosis rather than assume it. Changing the separate primary-language ranking behavior would expand the scope. I have not yet reproduced or implemented this issue.
3. **Anticipated difficulty in claiming it.** Several classmates have already claimed or investigated #57, but the Path Review rule allows shared issues. I will recheck its current state, write my own Unit 2 claim, and keep my work focused on the reported bug. No claim or comment has been posted from this task.

---

Related paths: `eval-run.txt`, `live-review-codex.md`, and `submission-status.md` in this directory; the installed skill's submitted copy is in `tools/issue-select/`.
