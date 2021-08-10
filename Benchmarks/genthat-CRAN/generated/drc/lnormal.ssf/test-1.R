library(drc)

function_to_run <- function() {
    method <- c("1", "2", "3", "4")
    loge <- FALSE
    fixed <- c(NA, NA, NA, NA)
    drc:::lnormal.ssf(method = method, fixed = fixed, loge = loge)
}




