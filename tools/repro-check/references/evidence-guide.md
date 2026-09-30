# Evidence guide: where proof lives in a reproduction package

## Environment

- Where it lives: eval issue context and repo-facts template requirements, then the candidate report's environment lines, version output and installation commands. Live: the issue, repository setup docs and the draft's own environment record.
- What good looks like: the report identifies the tested OS, relevant runtime/application/dependency versions or Git revision, and trigger-sensitive settings. Note a platform/version difference explicitly. A release number can be sufficient code identity; do not demand Docker, browser or database details for a pure local function that does not use them.

## Steps

- Where it lives: candidate report commands/UI actions, input data, prerequisites and linked or embedded fixtures, compared with the issue's reproduction. Live: inspect the draft as it will be posted, not unpublished files elsewhere in the workspace.
- What good looks like: another person can reach the same state and run the trigger without guessing data, flags or settings. Include a minimal fixture or a stable accessible source. A versioned standard package installation need not be spelled out as a lengthy tutorial. Hidden local paths, private inputs and omitted decisive UI actions fail followability.

## Behavior shown

- Where it lives: the issue's expected and actual behavior, its thread clarifications, then the report's quoted output, traceback, screenshot or concrete observed visible state.
- What good looks like: the artifact shows the decisive behavior of the actual target, not merely a process starting or a different error. For a missing field, show enough surrounding output to see its absence. For UI behavior, a specific before/after observation can be evidence without a screenshot when it identifies the action and visible state. An inaccessible screenshot filename is not evidence. A test's expected-failure label alone does not show the failing assertion; include the assertion/traceback or run with expected-failure handling disabled.

## Honesty

- Where it lives: claim assertions, report conclusions and diagnoses read against the report's artifacts and the target issue. In a live claim-only draft, inspect promises; no reproduction has happened yet.
- What good looks like: observed values support the stated outcome and its scope. A cannot-reproduce report passes when it exercises the issue's trigger, shows the non-failing result and identifies conditions; it need not manufacture a failure. A setup/import/network failure is a blocker, not a reproduction of a later product bug. Separate hypotheses from measurements and adjacent bugs from the selected issue. Do not attribute agent-executed tests to independent manual execution by the student.

## Comms

- Where it lives: claim versus issue specifics, both comments versus repo-facts template and contribution/AI-policy entries. Live: read scope.md, voice-guide.md, full issue context, linked contribution docs, issue templates and applicable AI policies before posting.
- What good looks like: the claim names the behavior or component and the next investigation/report; it makes no unsupported fix or deadline promise. The report carries its own evidence rather than piggybacking on a classmate. Honor required AI disclosures in the comment itself, and distinguish help drafting/running commands from an unsupported claim of independent work. Content satisfies template requirements even without identical headings. Do not fetch live sources in eval mode; grade only the frozen bundle, including its stated limits.
