library(doParallel)

function_to_run <- function() {
    pkgname <- NULL
    doParallel:::getparentenv(pkgname = pkgname)
}




