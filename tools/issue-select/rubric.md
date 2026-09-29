# Rubric: is this a good first issue?

## Evidence and time rules

In eval mode, use only the supplied issue bundle. Measure all ages against
its capture date, not today's date. In live mode, read `scope.md` first,
apply its source restriction and house rules, then use the current date.
Read the issue body and full available comment thread before grading.
Use the concrete sources below and `references/evidence-guide.md`.

A bot-only dependency bump does not establish human maintenance. A bot
merging a human-authored pull request does. A missing release is not proof
that a project is abandoned. Stars and a good-first-issue label cannot
override a failed required check.

## Checks

| Check | Evidence | Pass condition | Weight |
|---|---|---|---|
| maintainer_alive | Eval: the last 5 default-branch commits and their authors, the maintainer first-response sample, and OWNER/MEMBER/COLLABORATOR comments in the bundle. Live: the last 5 default-branch commits with linked PR authors, this issue's maintainer comments, and first-response times on 5 recently updated issues. | At least one of these is present: a human-authored default-branch commit or merged human PR within 180 days; an OWNER/MEMBER/COLLABORATOR comment in this issue within 180 days; or at least 1 sampled issue with a maintainer first response within 30 days. Automated-only commits do not satisfy the commit alternative. | required |
| repository_active | Eval: archived flag, latest release date, and default-branch commit dates in Repo facts. Live: repository metadata, latest non-draft release, and the last 5 default-branch commits. | The repository is not archived, and either its latest release is within 365 days or at least 1 default-branch commit is within 180 days. A missing release is allowed when the commit alternative passes. | required |
| bounded_scope | Eval: issue title, body, labels, author association, comments, opening date, and closed-unmerged PR history. Live: the same issue surfaces and linked or mentioned PR history. | The request describes 1 coherent contribution, such as a specific behavior fix, documentation topic, test gap, or feature with a stated outcome. It is not a pure usage question, an umbrella/tracking issue with independent subprojects, or an unresolved design choice still awaiting maintainer direction; no maintainer says it requires a core parser/compiler/runtime/architecture redesign. Reject an issue at least 730 days old with at least 2 abandoned implementation PRs unless a maintainer subsequently narrows the task to a concrete remaining change. Multiple related acceptance criteria or documentation pages can form one contribution. A terse body or missing reproduction steps alone does not fail this check. | required |
| available_to_contribute | Eval: issue state, assignees and linked PR states in Repo facts, plus every claim and PR mention in Comments. Live: issue state, Assignees, Development links, and the full comment thread with the current state of mentioned PRs. Apply the house rule in scope.md only in live mode. | The issue is open, has 0 active assignees, and has 0 open implementation PRs, including PRs mentioned only in comments. There is no unwithdrawn claim made within 30 days and no maintainer-approved claim that has not subsequently been released. A closed-unmerged PR or an unacknowledged claim older than 30 days alone does not reserve an issue. In scoped Path Review live mode, classmates' claim comments are ignored as required by scope.md. | required |
| ai_policy_compatible | Eval: the contribution-policy entry in Repo facts. Live: root and .github/ CONTRIBUTING files, linked contributor rules, AI_POLICY.md or AI_USAGE_POLICY.md if present, and PR-template disclosure requirements. | The inspected policy does not ban the planned AI-assisted contribution. Explicitly permitted assistive use passes even when fully AI-generated submissions are prohibited. Disclosure, human review, understanding, and testing requirements pass and must be recorded for later compliance. A confirmed absence of AI-specific restrictions passes; an unreadable or uninspected policy is unclear. | required |
| verification_path | Eval: issue body and maintainer comments. Live: the same surfaces, plus a named test or documentation-build command in contributor instructions. | At least 1 concrete verification route is identified: reproduction input with expected behavior, a test/assertion to add or update, or a documentation example/build check that would demonstrate the requested result. | preferred |
| newcomer_guidance | Eval: labels, issue body, and maintainer comments. Live: those same surfaces. | At least 1 of these is present: a good-first-issue or equivalent beginner label; a named file/function to investigate; or a maintainer's concrete implementation suggestion. | preferred |

## Verdict rule

Return `accept` only if every `required` check receives `pass`; return
`reject` if any required check receives `fail` or `unclear`. Never silently
skip a check. Record one deciding fact or quote with its source for every
grade. Missing required evidence is `unclear`, not invented evidence.

Preferred checks never change the verdict. Their `unclear` grades supply
no preference and do not reject an otherwise accepted issue. Rank accepted
live candidates by the actual experience, interests, and available time in
`scope.md`, then by the number of preferred checks passed; explain the fit.
Fit cannot rescue a rejected candidate or reject an accepted one.

The Path Review exception is limited to the house rule stated in
`scope.md`; it never applies to frozen eval bundles. Do not post a claim,
comment, or pull request while selecting an issue for Unit 1.
