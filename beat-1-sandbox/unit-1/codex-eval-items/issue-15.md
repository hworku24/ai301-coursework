Codex supplementary frozen-bundle evaluation; not Claude Code or a harness transcript.

```json
{
  "item": "issue-15",
  "checks": [
    {
      "name": "maintainer_alive",
      "grade": "pass",
      "evidence": "Repo facts: human default-branch commit 2026-08-03 by amanagr, within 180 days of 2026-08-05."
    },
    {
      "name": "repository_active",
      "grade": "pass",
      "evidence": "Repo facts: not archived; latest default-branch commit 2026-08-03 is 2 days before capture. The commit alternative satisfies the 180-day threshold; a release is not needed."
    },
    {
      "name": "bounded_scope",
      "grade": "fail",
      "evidence": "Opened 2021-08-18, over 730 days before capture; #20840 and #23123 are closed-unmerged. The available comments do not subsequently narrow a concrete remaining implementation."
    },
    {
      "name": "available_to_contribute",
      "grade": "pass",
      "evidence": "No assignee or open PR in Repo facts. Available comments show repeated unassignments; the final unacknowledged February 2024 claim is older than 30 days. Unshown comments are not fetched in frozen mode."
    },
    {
      "name": "ai_policy_compatible",
      "grade": "pass",
      "evidence": "Repo facts: contribution policy (CONTRIBUTING.md, section \"AI use policy and guidelines\"): AI tools allowed; contributors must personally understand, test, and be able to explain every change; AI-generated PRs that appear untested or not understood are closed without review Obligations: understand, test and explain every change."
    },
    {
      "name": "verification_path",
      "grade": "pass",
      "evidence": "Body and September 28 example distinguish command=/gitlab and text=test; this supplies a concrete payload assertion even though scope fails."
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
