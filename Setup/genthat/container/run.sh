#!/usr/bin/env bash
set -u

/opt/setup-scripts/install_pkgs.R /opt/setup_scripts/packages.txt /opt/r_library /opt/cran &&
/opt/setup-scripts/extract_testcases.R /opt/setup_scripts/packages.txt /opt/r_library /opt/cran /opt/testcases 4

