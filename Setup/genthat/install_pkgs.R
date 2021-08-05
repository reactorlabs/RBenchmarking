#!/usr/bin/env Rscript

argv <- commandArgs(trailingOnly=TRUE)

if (length(argv) != 2) {
  message('ERROR: requires two arguments\n')
  message('install_pkgs.R packages.txt <installation_destination>')
  stop()
}

pkg_file <- normalizePath(argv[[1]])
lib_path <- argv[[2]]


if(! dir.exists(lib_path)) {
  dir.create(lib_path)
}
lib_path <- normalizePath(lib_path)


# One day before the release of R 3.6.3
options(repos='https://cran.microsoft.com/snapshot/2020-02-28/')

packages <- scan(pkg_file, character(), sep='\n')
install.packages(packages, lib=lib_path)
