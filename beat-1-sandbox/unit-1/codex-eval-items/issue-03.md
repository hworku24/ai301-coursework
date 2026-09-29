Codex supplementary frozen-bundle evaluation; not Claude Code or a harness transcript.

```json
{
  "item": "issue-03",
  "checks": [
    {
      "name": "maintainer_alive",
      "grade": "pass",
      "evidence": "Repo facts: human default-branch commit 2026-08-03 by Pierre-Sassoulas, within 180 days of 2026-08-05."
    },
    {
      "name": "repository_active",
      "grade": "pass",
      "evidence": "Repo facts: not archived; latest default-branch commit 2026-08-03 is 2 days before capture. The commit alternative satisfies the 180-day threshold; a release is not needed."
    },
    {
      "name": "bounded_scope",
      "grade": "fail",
      "evidence": "Opening date 2023-10-12 is over 730 days before capture; PRs #10987, #11001 and #11008 are closed-unmerged. The maintainer reserves #10985 but does not narrow a concrete remaining change."
    },
    {
      "name": "available_to_contribute",
      "grade": "fail",
      "evidence": "Repo facts: this issue: assignees: none; linked PRs: pylint-dev/pylint#10985 (open); pylint-dev/pylint#10987 (closed); pylint-dev/pylint#11001 (closed); pylint-dev/pylint#11003 (merged); quick123-666/pylint#1 (open); pylint-dev/pylint#11008 (closed)"
    },
    {
      "name": "ai_policy_compatible",
      "grade": "pass",
      "evidence": "Repo facts: contribution policy (.github/CONTRIBUTING.md): no statement on AI or contribution tooling; the repo ships AGENTS.md instructions for AI coding agents"
    },
    {
      "name": "verification_path",
      "grade": "unclear",
      "evidence": "Body asks for robust JUnit reporting and a comment links an XML implementation, but no concrete input, expected output assertion, or test is supplied."
    },
    {
      "name": "newcomer_guidance",
      "grade": "pass",
      "evidence": "Issue labels include good first issue (or equivalent), satisfying the beginner-label alternative."
    }
  ],
  "verdict": "reject"
}
```
