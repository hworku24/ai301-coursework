# Finish the official Unit 2 evaluation

Claude Code reported an individual spending limit during setup. Further Claude calls were paused at the student's request. Access is expected to return Thursday, October 1, 2026, but the reset has not been verified. No official Unit 2 harness run has occurred; the current `eval-run.txt` is the untouched course placeholder.

## 1. Run the full evaluation when credit is available

On this Mac, the installed skill, original starter and coursework checkout are ready:

```bash
bash '/Users/hewanworku/Desktop/Project 4/ai301-unit1-work/ai301-coursework/beat-1-sandbox/unit-2/run-official-eval.sh'
```

This invokes the original harness with its pinned Sonnet model, all 20 scored packages, the installed rubric/evidence/skill files, and `--save-run` at the exact required location. The course estimates about $4 for a full run. The script also copies those installed skill files into the submission folder. It does not edit the generated transcript or post any comments.

On another computer, clone the Unit 2 starter next to the coursework repository and install `tools/repro-check/` under `~/.claude/skills/repro-check/` first. The script derives the checkout paths from its own location.

If the run errors, read the error before retrying. Do not claim that the placeholder or an incomplete run is valid. If the score is below 18/20 or a category has no match, inspect disagreements and revise the installed components. Use `--only` for targeted reruns and relevant canaries before another confirming full run. Never change the pinned model or hand-edit `eval-run.txt`.

## 2. Record the actual result

In `reproduction.md`, append the exact chronological agreement/category lines, replace the pending official status, and update Package analysis with one actual verdict from `official-eval-results.json` and its gold label. Keep the quoted check identical to the submitted rubric. Do not substitute the supplementary Codex score for the official one. Record any revisions and trade-offs honestly.

The claim and repro are already posted and were checked with Codex before posting. To obtain the prescribed Claude Code live review after access returns:

```bash
export PATH="$HOME/.local/bin:$PATH"
cd '/Users/hewanworku/Desktop/Project 4/ai301-unit1-work/ai301-coursework/beat-1-sandbox/unit-2'
claude 'repro-check: grade the full package in claim-comment.md and reproduction-comment.md for https://github.com/codepath/pathreview-ai301-fa26-s3/issues/57. Read the installed scope, rubric, evidence guide and voice guide. Grade only; do not post or edit comments.'
```

Save its actual output if needed. This is a later review; do not describe it as having happened before the already-posted comments. If it identifies a substantive defect, revise the report and update the existing comment and pasted text together. Do not post duplicate claims. Instructor acceptance of the earlier Codex review has not been confirmed.

## 3. Review, commit and submit

Review the voice guide and personal reflection in your own words. All facts about the reproduction are backed by the recorded command outputs; keep the disclosure that Codex executed the commands.

```bash
cd '/Users/hewanworku/Desktop/Project 4/ai301-unit1-work/ai301-coursework'
git diff --check
git add tools/repro-check beat-1-sandbox/unit-2
git commit -m 'docs(agent): record official Unit 2 evaluation'
git push origin main
```

Submit the entire coursework repository URL: https://github.com/hworku24/ai301-coursework

The pasted assignment deadline was September 28; check the course portal's late-submission rules. No portal submission or extension request has been made by this task.
