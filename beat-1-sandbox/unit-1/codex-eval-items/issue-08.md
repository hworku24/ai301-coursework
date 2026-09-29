Codex supplementary frozen-bundle evaluation; not Claude Code or a harness transcript.

```json
{
  "item": "issue-08",
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
      "evidence": "Body asks to confirm intended design; July 24 comments leave component data-attribute versus handler design questions unresolved for the remaining banners."
    },
    {
      "name": "available_to_contribute",
      "grade": "fail",
      "evidence": "Repo facts: this issue: assignees: piyushagarwal-55; linked PRs: zulip/zulip#39811 (open); the August 3 inactivity warning does not unassign the issue before the August 5 capture."
    },
    {
      "name": "ai_policy_compatible",
      "grade": "pass",
      "evidence": "Repo facts: contribution policy (CONTRIBUTING.md, section \"AI use policy and guidelines\"): AI tools allowed; contributors must personally understand, test, and be able to explain every change; AI-generated PRs that appear untested or not understood are closed without review Obligations: understand, test and explain every change."
    },
    {
      "name": "verification_path",
      "grade": "pass",
      "evidence": "Body names the devtools/banners page and explains the unwanted mouse-click focus outline; migrated banners can be checked against that concrete behavior."
    },
    {
      "name": "newcomer_guidance",
      "grade": "pass",
      "evidence": "Body names web/src/banners.ts; maintainer comments approve incremental migration."
    }
  ],
  "verdict": "reject"
}
```
