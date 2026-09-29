Codex supplementary frozen-bundle evaluation; not Claude Code or a harness transcript.

```json
{
  "item": "issue-02",
  "checks": [
    {
      "name": "maintainer_alive",
      "grade": "fail",
      "evidence": "Repo facts: most recent human/default-branch commit is 2023-12-09 (970 days old); all sampled issues lack maintainer responses and the available thread has no qualifying recent maintainer comment."
    },
    {
      "name": "repository_active",
      "grade": "fail",
      "evidence": "Repo facts: not archived; latest default-branch commit 2023-12-09 is 970 days before capture. Release is absent or older than 365 days; neither permitted activity route rescues this repository."
    },
    {
      "name": "bounded_scope",
      "grade": "pass",
      "evidence": "Body: make z -x remove the current directory with BSD sed as well as GNU sed; one portability bug."
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
      "evidence": "Body supplies /Users/me/project in the .z data file and z -x, expecting removal on macOS and GNU/Linux."
    },
    {
      "name": "newcomer_guidance",
      "grade": "unclear",
      "evidence": "No beginner label or maintainer implementation advice; the non-maintainer comment names a fork of z.sh, not a confirmed target source file/function."
    }
  ],
  "verdict": "reject"
}
```
