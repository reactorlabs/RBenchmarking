#!/usr/bin/env Rscript

argv <- commandArgs(trailingOnly=TRUE)

if (length(argv) < 4 || length(argv) > 5) {
  message('install_pkgs.R <packages.txt> <package_install_dir> <package_src_dir> <testcases_destination> [NCORES]')
  stop("Incorrect number of arguments")
}

library(genthat)
library(doParallel)
library(foreach)
library(covr)


mkdir_norm <- function(d) {
  if(! dir.exists(d)) {
    dir.create(d)
  }
  normalizePath(d)
}


pkg_file <- normalizePath(argv[[1]])
lib_path <- normalizePath(argv[[2]])
src_path <- normalizePath(argv[[3]])
testcases_path <- mkdir_norm(argv[[4]])

NCORES <- 1
if(length(argv) >= 5) {
  NCORES <- strtoi(argv[[4]])
}

cl <- parallel::makeForkCluster(NCORES, outfile="")
doParallel::registerDoParallel(cl)


if(! dir.exists(testcases_path)) {
  dir.create(testcases_path)
}
testcases_path <- normalizePath(testcases_path)

packages <- scan(pkg_file, character(), sep='\n')

# running the tests sometimes creates files: go into a temporary directory
setwd(tempdir())

#foreach(pkg = packages) %do% {
for (pkg in packages) {
  .libPaths(lib_path)
  options(genthat.source_paths=src_path)
  message("Generating tests for ", pkg)
  # /!\ quiet = false is buggy with packages that test for interractive output
  gen_from_package(pkg, types="all", action="generate", prune_tests=TRUE, output_dir=testcases_path, quiet=TRUE)

  #src <- file.path(src_path, pkg)
  #trace_from_source_package(src, types="all", action="generate", prune_tests=TRUE, output_dir=testcases_path, quiet=TRUE)
}
