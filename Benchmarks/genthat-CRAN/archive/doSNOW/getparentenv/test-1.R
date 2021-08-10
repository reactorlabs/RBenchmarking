library(doSNOW)

function_to_run <- function() {
    pkgname <- NULL
    doSNOW:::getparentenv(pkgname = pkgname)
}




