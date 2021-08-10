#!/usr/bin/env bash
set -u

# Install genthat and some deps
/opt/setup-scripts/install_genthat.R &&

# Install the packages defined in packages.txt
/opt/setup-scripts/install_pkgs.R /opt/setup-scripts/packages.txt /opt/r_library /opt/cran &&

# Extract the testcases
/opt/setup-scripts/extract_testcases.R /opt/setup-scripts/packages.txt /opt/r_library /opt/cran /opt/testcases 4

# Record the return values of the testcases to .ext files
/opt/setup-scripts/record_retv.R /opt/testcases 4

# Check if the return value is stable over several iterations
#/opt/setup-scripts/check_against_recorded_retv.sh <harness.R> /opt/testcases
