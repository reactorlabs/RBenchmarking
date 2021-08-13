

genthat_extracted_call <- function() {
    r <- c(1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5)
    ptox <- c(0.1, 0.14, 0.18, 0.22, 0.26, 0.3)
    n <- 2:25
    clinfun:::bdrycross.prob(n = n, r = r, ptox = ptox)
}




