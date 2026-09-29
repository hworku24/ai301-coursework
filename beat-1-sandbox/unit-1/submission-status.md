# Unit 1 submission status

I used Codex after Claude Code hit its spending limit and will use Claude Code for future assignments. The same rubric and evidence guided this review; acceptance of the tool substitution remains up to the instructor.

This is a prepared draft, not a completed 25-point submission. Claude Code authentication succeeded and the student authorized the official evaluation. Its first full attempt failed on all 20 items because the account reports an individual spend limit. The original harness and model were used; no synthetic transcript or verdict was substituted.

| Graded item | Points | Current state |
|---|---:|---|
| Skill in tools/issue-select/ | 2 | All four required files prepared. |
| Filled rubric in required format | 2 | Five required checks, two preferred checks, and a binary verdict rule; recognized by the course harness's format parser. |
| SKILL.md, scope.md, evidence guide | 2 | Present; engine and guide match the starter; scope uses the required repo and confirmed student profile. |
| Complete harness-written eval-run.txt | 3 | **Missing. The existing file is the original template placeholder, not a run.** |
| Run history | 2 | Actual attempt 1 is recorded: agreement 0/0, all 20 items errored, transcript not written. A successful final run remains required. |
| Issue analysis | 2 | issue-12 actual ERROR/null result, gold reject label, and separately disclosed manual reject analysis are recorded. Confirm the actual verdict after a successful run. |
| Check rationale | 2 | Exact current policy-check row quoted and explained. |
| Trade-offs | 1 | Explicit limitations and missed-case risks documented. |
| Selection rationale | 2 | All three prompts reviewed and revised using the student’s SQL/Java/Python experience and 6–10 hour budget; AI assistance is disclosed. |
| Issue link | 3 | Individual issue #57 recorded. |
| Verdict output | 4 | Verbatim Codex application of the skill accepts #57 and includes the JSON array. **This is not the requested Claude Code execution; substitution is not confirmed as acceptable.** |

## Completed supplementary evaluation

The full **Codex review is 18/20 (90%)**, with clear-accept 7/8, dead-repo 3/3, claimed 4/4, scope 3/4 and policy 1/1. All 20 items include all seven checks and evidence. See [the report](codex-eval-review.md), [structured results](codex-eval-review.json), and its linked individual JSON outputs. The run history and issue analysis now include these actual results and the two disagreements. Gold labels were visible before review; this is not a blind benchmark or the official Claude Code run. The rubric and original eval-run.txt remain unchanged.

## To finish the official requirements

1. Ask the course account administrator to raise the individual spend limit. Claude Code is already authenticated. Diagnostic: `You've hit your individual spend limit · run /usage-credits to ask your admin for a higher limit`. No request to an administrator was sent by this task.
2. Run the unmodified Unit 1 harness against the installed rubric and installed SKILL.md, without --only or --limit, with --save-run pointing to beat-1-sandbox/unit-1/eval-run.txt.
3. Inspect errors and disagreements, revise the installed rubric if needed, and use targeted reruns during revision. Aim for at least 18/20 and at least one match in every category. Copy any revised installed files into tools/issue-select/ and finish with a full saved run. Never hand-edit eval-run.txt.
4. Update selection.md with actual chronological agreement lines and one actual scored issue verdict/gold comparison. Preserve an exact current check quote.
5. Run the installed skill through Claude Code on issues #57, #70, and #63, confirm an accepted issue, and replace the alternative live output verbatim. If the course explicitly permits Codex instead, retain this disclosed output; do not assume equivalence without that permission.
6. Review the personal reflection in your own words, upload/commit the final files, and submit the entire coursework repository URL through the course portal.

Do not claim an issue during Unit 1.
