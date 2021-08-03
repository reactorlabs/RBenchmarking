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

  GZFILE="$PKG_DIR/$PKG.tar.gz"
  if [[ -z $VERSION || $VERSION == "NULL" ]]; then
    printf "Downloading latest %s\n" "$PKG" &&
    Rscript -e "TMP <- remotes::download_version('$PKG', repos='https://cloud.r-project.org/', quiet=FALSE); system(paste('mv', TMP, '$GZFILE'))"
  else
    printf "Downloading %s v. %s\n" "$PKG" "$VERSION" &&
    GZFILE=Rscript -e "TMP <- remotes::download_version('$PKG', repos='https://cloud.r-project.org/', version=\"$VERSION\", quiet=FALSE); system(paste('mv', TMP, '$GZFILE')"
  fi
  
  tar xf "$GZFILE" --directory "$PKG_DIR" && rm "$GZFILE"
}
export -f download_pkg

install_pkg () {
  IFS=, read PKG VERSION <<< "$1"
  PKG_PATH="$PKG_DIR/$PKG"
  Rscript -e "remotes::install_local('$PKG_PATH',force=TRUE)"
}
export -f install_pkg

R -e "install.packages('remotes', repos='https://cloud.r-project.org/')"

mkdir -p "$PKG_DIR" &&
< /dev/stderr echo "Downloading all packages..."
< "$PACKAGES_FILE" xargs -r -n1 -P4 bash -c 'download_pkg "$@"' _

< /dev/stderr echo "Installing all downloaded packages..."
< "$PACKAGES_FILE" xargs -r -n1 bash -c 'install_pkg "$@"' _

