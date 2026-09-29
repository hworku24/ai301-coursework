# Unit 1 submission status

This is a prepared draft, not a completed 25-point submission. The student requested that Claude be skipped. The official harness is unchanged, no model substitution was made, and no synthetic eval transcript was written.

| Graded item | Points | Current state |
|---|---:|---|
| Skill in tools/issue-select/ | 2 | All four required files prepared. |
| Filled rubric in required format | 2 | Five required checks, two preferred checks, and a binary verdict rule; recognized by the course harness's format parser. |
| SKILL.md, scope.md, evidence guide | 2 | Present; engine and guide match the starter; scope uses the required repo and confirmed student profile. |
| Complete harness-written eval-run.txt | 3 | **Missing. The existing file is the original template placeholder, not a run.** |
| Run history | 2 | Honest preparation history is recorded; required scored agreement history is pending a real run. |
| Issue analysis | 2 | issue-12 manual decision and gold label are recorded with reasoning; replace/confirm the decision against the real harness output before submitting. |
| Check rationale | 2 | Exact current policy-check row quoted and explained. |
| Trade-offs | 1 | Explicit limitations and missed-case risks documented. |
| Selection rationale | 2 | All three prompts drafted from the student's SQL/Java/Python experience and 6–10 hour budget; student must review in their own words. |
| Issue link | 3 | Individual issue #57 recorded. |
| Verdict output | 4 | Verbatim Codex application of the skill accepts #57 and includes the JSON array. **This is not the requested Claude Code execution; substitution is not confirmed as acceptable.** |

## To finish the official requirements

1. Use an environment with authenticated, course-funded Claude Code. No keys or passwords belong in this repository.
2. Run the unmodified Unit 1 harness against the installed rubric and installed SKILL.md, without --only or --limit, with --save-run pointing to beat-1-sandbox/unit-1/eval-run.txt.
3. Inspect errors and disagreements, revise the installed rubric if needed, and use targeted reruns during revision. Aim for at least 18/20 and at least one match in every category. Copy any revised installed files into tools/issue-select/ and finish with a full saved run. Never hand-edit eval-run.txt.
4. Update selection.md with actual chronological agreement lines and one actual scored issue verdict/gold comparison. Preserve an exact current check quote.
5. Run the installed skill through Claude Code on issues #57, #70, and #63, confirm an accepted issue, and replace the alternative live output verbatim. If the course explicitly permits Codex instead, retain this disclosed output; do not assume equivalence without that permission.
6. Review the personal reflection in your own words, upload/commit the final files, and submit the entire coursework repository URL through the course portal.

Do not claim an issue during Unit 1.
