

genthat_extracted_call <- function() {
    prior <- list(c("unif", "0", "1"))
    i <- 1L
    EasyABC:::.create_legacy_prior(name = prior[[i]][1], args = prior[[i]][-1])
}




