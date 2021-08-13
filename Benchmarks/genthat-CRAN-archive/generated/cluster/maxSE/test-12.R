library(cluster)

function_to_run <- function() {
    sk <- c(0.5, 0.5, 1, 0.5, 0.5, 1.5, 0.5, 0.5)
    SEf <- 4
    M <- "globalSEmax"
    fk <- c(2, 3, 5, 4, 7, 8, 5, 4)
    cluster:::maxSE(f = fk, SE.f = sk, method = M, SE.factor = SEf)
}




