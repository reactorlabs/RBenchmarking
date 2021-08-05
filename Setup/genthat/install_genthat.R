#!/usr/bin/env Rscript

# One day before the release of R 3.6.3
options(repos='https://cran.microsoft.com/snapshot/2020-02-28/')

# remotes will be needed to install `genthat` but does not have to be installed in lib_path
install.packages("remotes")
# Install genthat and the dependancies for extract_testcases.R (outside of lib_path)
install.packages(c("doParallel", "foreach"))
remotes::install_github('vogr/genthat', ref='genthat-for-profiling')
