#!/usr/bin/env bash
set -u


if [[ $# -ne 2 ]]; then
  > /dev/stderr printf "ERROR: Requires two arguments\n"
  > /dev/stderr printf "etup_R_packages.sh <package_directory> <packages.txt>\n\n"
  > /dev/stderr printf "packages.txt format:\n\tpackage_name1\nOR\n\tpackage_name1,<version1>\n"
  exit 1
fi;

SCRIPTS="$(dirname "$(readlink -f "$0")")"
PKG_DIR="$(realpath "$1")"
PACKAGES_FILE="$(realpath "$2")"

mkdir -p "$PKG_DIR" &&
"$SCRIPTS/download.sh" "$PKG_DIR" "$PACKAGES_FILE"
"$SCRIPTS/install_packages.sh" "$PKG_DIR"

