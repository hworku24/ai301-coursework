Codex supplementary frozen-bundle evaluation; not Claude Code or a harness transcript.

```json
{
  "item": "issue-12",
  "checks": [
    {
      "name": "maintainer_alive",
      "grade": "pass",
      "evidence": "Repo facts: human default-branch commit 2026-08-12 by Mouse Reeve, within 180 days of 2026-08-12."
    },
    {
      "name": "repository_active",
      "grade": "pass",
      "evidence": "Repo facts: not archived; latest default-branch commit 2026-08-12 is 0 days before capture. The commit alternative satisfies the 180-day threshold; a release is not needed."
    },
    {
      "name": "bounded_scope",
      "grade": "pass",
      "evidence": "Body requests including fractional progress toward a reading goal, with a numerical example; no abandoned PRs are listed."
    },
    {
      "name": "available_to_contribute",
      "grade": "pass",
      "evidence": "No assignee or linked PR. The 2024 contributor comment is stale; the maintainer gives technical HTML/CSS advice, not an explicit assignment or approval of exclusive ownership."
    },
    {
      "name": "ai_policy_compatible",
      "grade": "fail",
      "evidence": "Repo facts: contribution policy (CONTRIBUTING.md -> docs.joinbookwyrm.com/contributing.html, section \"Generative AI\"): \"Meaningful human interaction is the whole point of BookWyrm. We do not accept AI-generated code or documentation. If you are unsure how something in BookWyrm works, please ask for help – we are keen to help other humans to understand and contribute to the project.\""
    },
    {
      "name": "verification_path",
      "grade": "pass",
      "evidence": "Body: 1 of 10 books plus 20% of the next book should display 12%, not 10%."
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
