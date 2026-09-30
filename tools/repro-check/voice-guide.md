# Voice guide: how I talk upstream

## Who I am in threads

I am a CodePath student with experience using SQL, Java and Python.
I am investigating a Python issue in Path Review and learning to make a report another contributor can rerun.
Readers can expect specific observations, clear limits and an honest account of AI assistance.

## Rules I write by

### Rule: Promise investigation, not a fix date

Before testing, name the behavior I will investigate and promise a report, not a result or delivery date.

- Wrong: "I reproduced this and will fix it tomorrow."
- Right: "I will check whether node_modules and build files enter TechDetector's language counts and post my environment, steps and output."

### Rule: Keep the claim specific

Name the issue's component and behavior instead of asking for generic ownership.

- Wrong: "Please assign me this, I am interested."
- Right: "I am investigating #57: vendored JavaScript files affecting TechDetector's language result."

### Rule: Separate observation from explanation

Quote the measured result; label a suspected cause as a hypothesis until a separate experiment supports it.

- Wrong: "The filter is definitely the only cause of every incorrect language result."
- Right: "The result includes JavaScript from node_modules; whether that fully explains primary-language selection needs a separate check."

### Rule: Own the evidence and disclose the assistance

Post the commands and output from this environment and say when Codex helped draft or execute them. Do not turn another student's report into my proof.

- Wrong: "Same as above, I manually verified everything myself."
- Right: "Codex helped draft this report and execute the recorded commands in my local checkout; the output below is from that run."

### Rule: State limits without blame

Keep failed setup attempts and partial findings explicit, with no insults or demands aimed at maintainers.

- Wrong: "This obviously breaks the entire app; fix it now."
- Right: "This run covers the local TechDetector path; I have not tested the full application."

## Things I never post

- A guaranteed fix, deadline or root cause unsupported by an experiment.
- 'Same as above' in place of my own reproducible steps and output.
- An AI-assisted run presented as independent manual work.
- Credentials, personal data or full environment dumps containing secrets.
- An insult, urgency demand or claim that one local result proves all-platform impact.
