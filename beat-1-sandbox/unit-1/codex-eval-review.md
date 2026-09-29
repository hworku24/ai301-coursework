# Supplementary Codex evaluation — 2026-09-29

**Agreement: 18/20 (90%).** All 20 frozen bundles were reviewed against the unchanged submitted rubric, with all seven checks graded. The four calibration items are excluded.

This is a manual Codex application of the skill, not a Claude Code/Sonnet harness run. Gold labels were visible in this session before the review, so this is not a blind benchmark. Python serialized and validated the judgments and calculated agreement; it did not execute a model. Ages use each bundle’s capture date. Existing snapshot truncations were respected; no live information was fetched.

The official attempt still has 0/0 successfully scored items due to the account spend limit. `eval-run.txt` remains the untouched original placeholder. This report does not establish completion of that graded requirement.

## Category agreement

| Category | Matches |
|---|---:|
| clear-accept | 7/8 |
| dead-repo | 3/3 |
| claimed | 4/4 |
| scope | 3/4 |
| policy | 1/1 |

There is at least one match in every category; the descriptive total reaches 18/20. These numerical checks do not make this an official qualifying run.

## Results

| Bundle | Codex | Gold | Agreement |
|---|---|---|---|
| [issue-01](codex-eval-items/issue-01.md) | accept | accept | match |
| [issue-02](codex-eval-items/issue-02.md) | reject | reject | match |
| [issue-03](codex-eval-items/issue-03.md) | reject | reject | match |
| [issue-04](codex-eval-items/issue-04.md) | accept | accept | match |
| [issue-05](codex-eval-items/issue-05.md) | reject | reject | match |
| [issue-06](codex-eval-items/issue-06.md) | accept | accept | match |
| [issue-07](codex-eval-items/issue-07.md) | reject | reject | match |
| [issue-08](codex-eval-items/issue-08.md) | reject | reject | match |
| [issue-09](codex-eval-items/issue-09.md) | reject | accept | disagreement |
| [issue-10](codex-eval-items/issue-10.md) | reject | reject | match |
| [issue-11](codex-eval-items/issue-11.md) | accept | accept | match |
| [issue-12](codex-eval-items/issue-12.md) | reject | reject | match |
| [issue-13](codex-eval-items/issue-13.md) | reject | reject | match |
| [issue-14](codex-eval-items/issue-14.md) | accept | accept | match |
| [issue-15](codex-eval-items/issue-15.md) | reject | reject | match |
| [issue-16](codex-eval-items/issue-16.md) | accept | accept | match |
| [issue-17](codex-eval-items/issue-17.md) | reject | reject | match |
| [issue-18](codex-eval-items/issue-18.md) | reject | reject | match |
| [issue-19](codex-eval-items/issue-19.md) | accept | accept | match |
| [issue-20](codex-eval-items/issue-20.md) | accept | reject | disagreement |

## Disagreements and rubric limitations

- **issue-09: Codex reject, gold accept.** The 2022 invitation to Jonathan was interpreted as approval of his claim. The current rule expires unacknowledged claims but never expires approved claims without an explicit release. Gold treats this claim as stale. This exposes both ambiguous approval language and an overly strict no-expiry rule. A future revision should define when stale approved claims expire and what counts as ownership, then rerun the full evaluation; no revision was made during this review.
- **issue-20: Codex accept, gold reject.** The actual bundle supplies place/resize/move/export outcomes and excludes custom uploads. The written scope rule accepts a coherent feature with a stated outcome, and no maintainer discussion rejects the design. A missing logo asset and unconfirmed product fit are real risks but are not explicit gates in the current rubric. Gold rejects the product decision. A future rule could require maintainer sponsorship and an identified asset/spec for project-specific toolbar branding, while avoiding blanket rejection of ordinary feature requests.
- **issue-17: maintenance loophole.** The first-response alternative lacks a recency cutoff, so old fast responses pass maintainer_alive. The archived-repository check still correctly rejects this item. Future revisions should bound response-sample age.
- **Evidence limits.** Some bundles intentionally omit later comments or truncate bodies. Verdicts describe the supplied snapshots only. Preferred unclear checks do not change verdicts. Conditional AI policies pass only with their recorded human-review/testing obligations.

## Artifacts

- [Structured report](codex-eval-review.json): all 140 check judgments, evidence, category scores and SHA-256 input fingerprints.
- Each linked item above ends with the skill’s single-object JSON output; these are Codex results, not fabricated Claude output.
- [Official failed attempt](eval-attempt-01-results.json) is retained separately.
