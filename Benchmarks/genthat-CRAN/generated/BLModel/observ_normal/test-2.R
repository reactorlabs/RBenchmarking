library(BLModel)

function_to_run <- function() {
    k <- 3
    BLModel:::observ_normal(x = matrix(c(rep(0.5, k), rep(0.2, k)), k, 2), q = matrix(0, k, 1), covmat = diag(k))
}




