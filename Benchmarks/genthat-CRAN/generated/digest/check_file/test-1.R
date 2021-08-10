library(digest)

function_to_run <- function() {
    object <- "/usr/lib/R/COPYING"
    errormode <- "stop"
    digest:::check_file(object = object, errormode = errormode)
}




