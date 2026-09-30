"""Read-only reproduction of issue #57; run from the pinned Path Review checkout."""
import json
import logging

import structlog

from agent.tools.tech_detector import TechDetector

# Hide nondeterministic informational log timestamps; do not change detector logic.
structlog.configure(wrapper_class=structlog.make_filtering_bound_logger(logging.WARNING))
detector = TechDetector()
source = ["main.py", "core/app.py"]
vendored = [
    "node_modules/lib/index.js", "node_modules/lib/util.js",
    "node_modules/x/a.js", "node_modules/y/b.js",
]
build = ["build/bundle.js", "build/vendor.js"]
cases = {
    "issue_exact": source + vendored + build,
    "source_only_control": source,
    "node_modules_only": source + vendored,
    "build_only": source + build,
    "nested_paths_control": source + ["repo/" + p for p in vendored + build],
    "first_party_js_control": source + ["app.js"],
}
for name, files in cases.items():
    result = detector.execute({"files": files})
    print(name + ": " + json.dumps({"success": result.success, **result.data}, sort_keys=True))
for path in ["node_modules/lib/index.js", "build/bundle.js",
             "repo/node_modules/lib/index.js", "repo/build/bundle.js"]:
    print(f"skip({path!r}): {detector._should_skip_file(path)}")
