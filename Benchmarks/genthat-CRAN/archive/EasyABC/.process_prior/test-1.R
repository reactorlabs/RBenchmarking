library(EasyABC)

function_to_run <- function() {
    prior <- list(c("unif", "0", "1"))
    EasyABC:::.process_prior(prior = prior)
}




