#!/usr/bin/env python3

import csv
from pathlib import Path
import sys


def log(*args, **kwargs):
    print(*args, **kwargs, file=sys.stderr)


def main(args):
    if(len(args) < 1 or len(args) > 2):
        log("genthat_rebenchconf.py <genthat_benchmarks_dir> [genthat_n_iter.csv]")
        sys.exit(1)

    source_path = Path(args[0]).absolute()

    genthat_n_iter = {}
    if (len(args) >= 2):
        reader = csv.reader(open(args[1]))
        genthat_n_iter = dict(reader)


    for testfile in source_path.glob("**/*.R"):
        relative = testfile.relative_to(source_path)
        classname = relative.with_suffix("")
        entryname = "".join([classname.parts[-3], "::", classname.parts[-2], "__", classname.parts[-1]])

        n_inner_it = genthat_n_iter.get(str(relative), 100)


        entry = f"""\
            - "{entryname}":
                 command: {classname}
                 extra_args: {n_inner_it}
                 codespeed_name: "[genthat] {entryname}"
"""
        print(entry,end="")

        

if __name__ == "__main__":
    main(sys.argv[1:])
