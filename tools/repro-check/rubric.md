# Rubric: is this reproduction package ready to post?

## Checks

| Check | Evidence | Pass condition | Weight |
|---|---|---|---|
| specific_claim | Candidate claim comment read against the issue title/body and stated next investigation. | The claim identifies the issue's actual behavior or affected component and a relevant next investigation or promised report. It does not merely request assignment, repeat another person's confirmation, or promise a fix/date without evidence. A prior reproduction claim is allowed only when supported by the full package; a pre-investigation claim promises the investigation instead. | required |
| environment_recorded | Repro report's environment, installation commands, revision/version identifiers and relevant configuration compared with the issue's target. | A stranger can identify the tested OS and relevant runtime/application/dependency versions or source revision, plus configuration that affects this trigger. A different version or platform is stated rather than presented as the original environment. Do not require irrelevant services or hardware; a versioned released CLI can identify code state without a Git SHA. | required |
| rerunnable_steps | Repro report's starting state, exact inputs/fixtures, setup prerequisites and trigger commands or UI actions; any included artifact dependencies. | The report supplies a runnable path from an identified starting state to the trigger, including non-default settings and the data needed to expose the issue. A stranger need not guess a missing private fixture, local file, command argument or UI action. Standard installation may be referenced when version and installation source are identified; arbitrary step counts and headings are irrelevant. | required |
| observed_evidence | Output excerpts, tracebacks, screenshots or concrete visible states in the report, compared with the commands/actions claimed to produce them. | At least one inspectable artifact or specific directly observed state demonstrates the outcome of the stated attempt. It contains the decisive value, error, missing/present field or visible behavior; a bare 'reproduced', unsupported diagnosis, unavailable local screenshot or 'same as above' is insufficient. Evidence for cannot-reproduce must show what happened instead. | required |
| issue_alignment | Issue body and thread clarifications compared with the report's trigger, expected/actual comparison and artifacts. | The attempted trigger and observed comparison address the issue's reported behavior, not an adjacent defect or an earlier setup failure. A report can pass with cannot-reproduce when it actually exercises the relevant trigger and shows the expected behavior. A setup failure alone does not test the issue. Differences in environment and limits of coverage are made explicit. | required |
| honest_outcome | The claim and report's conclusion, scope of assertions and causal language compared with the supplied observations. | The conclusion is supported by the shown evidence: reproduced, could not reproduce under the named conditions, or a clearly limited mixed result. Expected and actual behavior are distinguishable. Hypotheses are labelled; an observed symptom is not proof of a root cause, all-platform impact, or a completed fix. | required |
| repository_conventions | Repo-facts bug-template and contribution/AI-policy entries in eval mode; issue template, contributor instructions and applicable policies on GitHub in live mode, compared with both comments. | Both comments follow applicable reporting requirements, remain factual and respectful, and include any required AI-assistance disclosure. Required environment/evidence content may appear without template headings; do not fail solely for presentation. Confirmed policy silence is allowed; an uninspected required policy is unclear. A disclosure requirement cannot be satisfied by an AI note outside the posted comments. | required |

## Verdict rule

In full-package and eval mode, accept only when every required check passes.
Any required fail or unclear means reject. Grade every row and provide its
deciding evidence; formatting, confidence, length and popularity cannot replace proof.

In live claim-only mode, grade specific_claim and repository_conventions.
For the five report-dependent checks, emit unclear with evidence exactly
`not yet applicable: claim-only draft` and exclude those five from the verdict.
Both applicable checks must pass. The claim-only verdict never declares a
reproduction ready. Apply voice-guide.md in live mode and report violations;
in eval mode ignore that personal guide and scope.md.
