library(drc)

function_to_run <- function() {
    method <- "1"
    fixed <- c(-1, NA, NA, NA, 1)
    drc:::llogistic.ssf(method = method, fixed = fixed)
}




