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
