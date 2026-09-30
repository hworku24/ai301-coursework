#!/usr/bin/env bash
# Run only after course-funded Claude Code access returns.
set -euo pipefail
TASK_UNIT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TASK_REPO="$(cd "$TASK_UNIT/../.." && pwd)"
TASK_MATERIALS="$(cd "$TASK_REPO/../ai301-unit2-starter" && pwd)"
TASK_SKILL="$HOME/.claude/skills/repro-check"
export PATH="$HOME/.local/bin:$PATH"
command -v claude >/dev/null

# Keep submitted skill files identical to the installed files being evaluated.
mkdir -p "$TASK_REPO/tools/repro-check/references"
for TASK_FILE in SKILL.md scope.md rubric.md voice-guide.md references/evidence-guide.md; do
  cp "$TASK_SKILL/$TASK_FILE" "$TASK_REPO/tools/repro-check/$TASK_FILE"
done

cd "$TASK_MATERIALS/eval"
python3 -u run_eval.py \
  --rubric "$TASK_SKILL/rubric.md" \
  --evidence "$TASK_SKILL/references/evidence-guide.md" \
  --skill "$TASK_SKILL/SKILL.md" \
  --out "$TASK_UNIT/official-eval-results.json" \
  --save-run "$TASK_UNIT/eval-run.txt"
