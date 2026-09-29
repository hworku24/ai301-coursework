Codex supplementary frozen-bundle evaluation; not Claude Code or a harness transcript.

```json
{
  "item": "issue-07",
  "checks": [
    {
      "name": "maintainer_alive",
      "grade": "fail",
      "evidence": "Repo facts: most recent human/default-branch commit is 2025-02-10 (541 days old); all sampled issues lack maintainer responses and the available thread has no qualifying recent maintainer comment."
    },
    {
      "name": "repository_active",
      "grade": "fail",
      "evidence": "Repo facts: not archived; latest default-branch commit 2025-02-10 is 541 days before capture. Release is absent or older than 365 days; neither permitted activity route rescues this repository."
    },
    {
      "name": "bounded_scope",
      "grade": "pass",
      "evidence": "Body: underscore-containing directory names trigger an AttributeError in get_ith_path; a specific behavior fix."
    },
    {
      "name": "available_to_contribute",
      "grade": "pass",
      "evidence": "Repo facts and available comments: issue open, no assignee, no open implementation PR or qualifying reserved claim in the supplied evidence."
    },
    {
      "name": "ai_policy_compatible",
      "grade": "pass",
      "evidence": "Repo facts: contribution policy: no CONTRIBUTING.md in the repo; no stated policy"
    },
    {
      "name": "verification_path",
      "grade": "pass",
      "evidence": "Body provides an underscore-directory reproduction and AttributeError trace; successful navigation without that exception is the expected behavior."
    },
    {
      "name": "newcomer_guidance",
      "grade": "pass",
      "evidence": "Body names get_ith_path and includes its failing traceback."
    }
  ],
  "verdict": "reject"
}
```
