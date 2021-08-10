library(BBmisc)

function_to_run <- function() {
    tmp <- list(1, 2)
    BBmisc:::vlapply(x = tmp, fun = is.null)
}




