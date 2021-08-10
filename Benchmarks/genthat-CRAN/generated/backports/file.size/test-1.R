library(backports)

function_to_run <- function() {
    fn <- "/usr/lib/R/COPYING"
    backports:::file.size(fn)
}




