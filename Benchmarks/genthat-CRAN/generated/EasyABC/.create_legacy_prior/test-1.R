library(EasyABC)

function_to_run <- function() {
    prior <- list(c("unif", "0", "1"))
    i <- 1L
    EasyABC:::.create_legacy_prior(name = prior[[i]][1], args = prior[[i]][-1])
}




