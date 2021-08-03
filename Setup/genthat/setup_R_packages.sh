#!/usr/bin/env bash
set -u


if [[ $# -ne 2 ]]; then
  > /dev/stderr printf "ERROR: Requires two arguments\n"
  > /dev/stderr printf "setup_R_packages.sh <package_directory> <packages.txt>\n\n"
  > /dev/stderr printf "packages.txt format:\n\tpackage_name1\nOR\n\tpackage_name1,<version1>\n"
  exit 1
fi;

export PKG_DIR="$(realpath "$1")"
export PACKAGES_FILE="$(realpath "$2")"

download_pkg () {
  IFS=, read PKG VERSION <<< "$1"

  if [[ -z $VERSION || $VERSION == "NULL" ]]; then
    printf "Downloading latest %s\n" "$PKG" &&
    Rscript -e "genthat::download_package('$PKG', '$PKG_DIR', repos='https://cloud.r-project.org/', quiet=FALSE)"
  else
    printf "Downloading %s v. %s\n" "$PKG" "$VERSION" &&
    Rscript -e "genthat::download_package('$PKG', '$PKG_DIR', repos='https://cloud.r-project.org/', version=\"$VERSION\", quiet=FALSE)"
  fi
}
export -f download_pkg

install_pkg () {
  IFS=, read PKG VERSION <<< "$1"
  PKG_PATH="$PKG_DIR/$PKG"
  Rscript -e "devtools::install_local('$PKG_PATH',force=TRUE)"
}
export -f install_pkg

R -e "install.packages('devtools')"
R -e "devtools::install_github('PRL-PRG/genthat')"

mkdir -p "$PKG_DIR" &&
< /dev/stderr echo "Downloading all packages..."
< "$PACKAGES_FILE" xargs -r -n1 -P4 bash -c 'download_pkg "$@"' _

< /dev/stderr echo "Installing all downloaded packages..."
< "$PACKAGES_FILE" xargs -r -n1 bash -c 'install_pkg "$@"' _

