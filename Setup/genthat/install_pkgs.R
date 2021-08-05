#!/usr/bin/env Rscript

argv <- commandArgs(trailingOnly=TRUE)

if (length(argv) < 3 || length(argv) > 4) {
  message('install_pkgs.R <packages.txt> <pkg_installation_dest_dir> [pkg_source_dest_dir]')
  stop("Incorrect number of arguments")
}

mkdir_norm <- function(d) {
  if(! dir.exists(d)) {
    dir.create(d)
  }
  normalizePath(d)
}

pkg_file <- normalizePath(argv[[1]])
lib_path <- mkdir_norm(argv[[2]])

cran_path <- NULL
if (length(argv) >= 3) {
  cran_path <- mkdir_norm(argv[[3]])
}

gzpath <- tempdir()

# One day before the release of R 3.6.3
options(repos='https://cran.microsoft.com/snapshot/2020-02-28/')

packages <- scan(pkg_file, character(), sep='\n')

install.packages(packages, lib=lib_path, destdir=gzpath)

for (gzfile in list.files(gzpath, full.names=TRUE)) {
  untar(gzfile, exdir = cran_path)
}

