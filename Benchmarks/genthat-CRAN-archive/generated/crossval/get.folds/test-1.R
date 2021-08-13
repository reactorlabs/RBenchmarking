

genthat_extracted_call <- function() {
    ygrouped <- list(all = 1:30)
    nfolds <- 5
    crossval:::get.folds(ygrouped = ygrouped, K = nfolds)
}




