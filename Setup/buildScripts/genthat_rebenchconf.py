#!/usr/bin/env python3

import sys
from pathlib import Path


def log(*args, **kwargs):
    print(*args, **kwargs, file=sys.stderr)


def main(args):
    if(len(args) != 1):
        log("Requires one argument: directory containing the genthat-benchmarks")
        sys.exit(1)

    source_path = Path(args[0]).absolute()

    for testfile in source_path.glob("**/*.R"):
        classname = testfile.relative_to(source_path).with_suffix("")
        entryname = "".join([classname.parts[-3], "::", classname.parts[-2], "__", classname.parts[-1]])
        entry = f"""\
            - {entryname}:
                 command: {classname}
                 codespeed_name: "[genthat] {entryname}"
"""
        print(entry,end="")

        

if __name__ == "__main__":
    main(sys.argv[1:])
