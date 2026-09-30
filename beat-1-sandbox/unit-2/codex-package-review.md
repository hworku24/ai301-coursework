# Supplementary Codex package review

Manual review of all 20 frozen Unit 2 packages: **19/20 agreement**. All seven rubric checks were applied to each package. No Claude request was made for this review, and this is not the prescribed Sonnet harness run. Judgments were recorded before reading the Unit 2 gold labels, then compared. This is supplementary preparation for the official evaluation, not a substitute for it.

| Category | Matches |
|---|---:|
| clear-accept | 7/8 |
| wrong-target | 4/4 |
| no-evidence | 4/4 |
| unfollowable-comms | 3/3 |
| disclosure | 1/1 |

| Package | Codex | Gold | Match |
|---|---|---|---|
| pkg-01 | accept | accept | yes |
| pkg-02 | reject | reject | yes |
| pkg-03 | accept | accept | yes |
| pkg-04 | reject | reject | yes |
| pkg-05 | reject | accept | no |
| pkg-06 | reject | reject | yes |
| pkg-07 | accept | accept | yes |
| pkg-08 | reject | reject | yes |
| pkg-09 | accept | accept | yes |
| pkg-10 | accept | accept | yes |
| pkg-11 | accept | accept | yes |
| pkg-12 | accept | accept | yes |
| pkg-13 | reject | reject | yes |
| pkg-14 | reject | reject | yes |
| pkg-15 | reject | reject | yes |
| pkg-16 | reject | reject | yes |
| pkg-17 | reject | reject | yes |
| pkg-18 | reject | reject | yes |
| pkg-19 | reject | reject | yes |
| pkg-20 | reject | reject | yes |

## Disagreement and trade-off

`pkg-05`: Codex rejects because `rerunnable_steps` is unclear: the report describes a valid dependencies list and an unrecognized category section but does not give the actual `env.yml`. Gold accepts this minimal description and its stdout/JSON-parser evidence. The current strict input rule favors exact repeatability but can reject a useful report whose fixture is straightforward to reconstruct. No rule was loosened and no canary rerun is claimed. The official Sonnet result may differ; inspect its actual check grades on Thursday.

## Other limitations

`pkg-16` is rejected here by repository_conventions because latest/main confirmation is absent, while the gold note emphasizes the unacknowledged version deviation. Agreement on a verdict is not proof that every intermediate check is calibrated. `pkg-20` is rejected because required AI-disclosure compliance cannot be established from the comments; the gold note explicitly treats course packages as AI-assisted work. Keep disclosure as a canary if later revisions loosen communication checks.

[Structured results](codex-package-review.json) contain all 140 check judgments, deciding evidence and input fingerprints. `eval-run.txt` remains the original placeholder pending a real full harness run.
