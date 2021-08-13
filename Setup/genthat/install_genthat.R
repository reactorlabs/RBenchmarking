#!/usr/bin/env Rscript

# One day before the release of R 3.6.3
options(repos='https://cran.microsoft.com/snapshot/2020-02-28/')

# install genthat and the dependancies for extract_testcases.R (outside of lib_path)
# remotes will be needed to install `genthat`
install.packages(c("remotes", "doParallel", "foreach", "callr"))
remotes::install_github('PRL-PRG/genthat', ref='only-calls')
