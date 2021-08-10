library(crossval)

function_to_run <- function() {
    ygrouped <- list(all = 1:30)
    nfolds <- 5
    crossval:::get.folds(ygrouped = ygrouped, K = nfolds)
}




