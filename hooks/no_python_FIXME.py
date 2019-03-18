#!/usr/bin/python3

import sys
import subprocess

changed_files = [f.decode() for f in subprocess.check_output(
    ['git', 'diff-index', '--cached', '--name-only', 'HEAD']).split()]
changed_python_files = [filename for filename in changed_files
                        if filename.endswith('.py')]

for python_file in changed_python_files:
    with open(python_file) as f:
        for line_number, line in enumerate(f.readlines(), start=1):
            if 'FIXME' in line:
                print(f"{python_file}:{line_number}: {line}\n"
                      "Fix it, wouldn't ya?")
                sys.exit(1)
