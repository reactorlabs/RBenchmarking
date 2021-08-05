#!/usr/bin/env Rscript

argv <- commandArgs(trailingOnly=TRUE)

if (length(argv) < 1 || length(argv) > 3) {
  message('install_pkgs.R <packages.txt> [pkg_installation_dest_dir] [pkg_source_dest_dir]')
  message("By default, the packages will be installed to .libPaths(), and the source will not be saved.")
  stop("Incorrect number of arguments")
}

mkdir_norm <- function(d) {
  if(! dir.exists(d)) {
    dir.create(d)
  }
  normalizePath(d)
}

pkg_file <- normalizePath(argv[[1]])

lib_path <- .libPaths()
if (length(argv) >= 2) {
  lib_path <- mkdir_norm(argv[[2]])
}

cran_path <- NULL
if (length(argv) >= 3) {
  cran_path <- mkdir_norm(argv[[3]])
}

gzpath <- mkdir_norm(file.path(tempdir(), "gzpath"))

# One day before the release of R 3.6.3
options(repos='https://cran.microsoft.com/snapshot/2020-02-28/')

packages <- scan(pkg_file, character(), sep='\n')

# Install packages from which tests will be extracted in lib_path
install.packages(packages, lib=lib_path, destdir=gzpath)

# Extract their source in cran_path
if (! is.null(cran_path)) {
  for (gzfile in list.files(gzpath, full.names=TRUE)) {
    message(gzfile)
    untar(gzfile, exdir = cran_path)
  }
}
