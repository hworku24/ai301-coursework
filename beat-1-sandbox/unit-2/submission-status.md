# Unit 2 submission status

The skill, claim, actual reproduction and write-up are prepared. The official Claude Code evaluation is deferred until credit returns, at the student's request. This is not yet a claim that every graded item is complete.

| Graded item | Points | Evidence/status |
|---|---:|---|
| Skill uploaded to tools/repro-check/ | 2 | Five installed skill files copied into the required folder. |
| Filled rubric in required format | 4 | Seven required checks, exact evidence surfaces and binary verdict rule; course parser recognizes it. |
| Filled evidence guide and voice guide | 2 | All five evidence families, personal introduction, five rules with wrong/right pairs, and never-post list. |
| Harness-written eval-run.txt | 3 | **Pending Thursday. Current file is the original placeholder.** |
| Run history in reproduction.md | 2 | Actual preflight and supplementary 19/20 Codex review recorded; official chronological score must be appended after it exists. |
| Package analysis | 2 | pkg-02 Codex reject versus gold reject with exact trigger/error comparison. Update from the actual official result after the harness run. |
| Check rationale | 2 | Exact issue_alignment row quoted from the submitted rubric and explained. |
| Trade-offs | 1 | pkg-05 disagreement and the strict-fixture trade-off documented; no nonexistent rerun claimed. |
| Claim comment link and pasted text | 3 | Verified hworku24 permalink and exact body; posted before reproduction. |
| Repro comment link and pasted text | 4 | Verified permalink and exact body; pinned revision, environment, runnable inputs, actual observations and failing assertions. |

Both comments received a disclosed Codex skill review before posting; they did not receive the prescribed Claude Code live review because access was unavailable. [THURSDAY.md](THURSDAY.md) explains how to complete the official run, review and final write-up. Instructor acceptance of the substituted pre-posting review remains unconfirmed.

## Actual reproduction

- Fork: https://github.com/hworku24/pathreview-ai301-fa26-s3
- Claim: https://github.com/codepath/pathreview-ai301-fa26-s3/issues/57#issuecomment-5905431269
- Report: https://github.com/codepath/pathreview-ai301-fa26-s3/issues/57#issuecomment-5905615150
- Existing module tests: 25 passed, 2 expected failures; selected tests with --runxfail: 2 actual failures showing JavaScript versus expected Python.
- Checkout remained unchanged at 2f4e82f52efbcfcc57d65b3fa5348672163ca088. No fix or PR was created for this reproduction assignment.
