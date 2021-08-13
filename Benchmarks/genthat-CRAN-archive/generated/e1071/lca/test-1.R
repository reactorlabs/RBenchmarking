

genthat_extracted_call <- function() {
    x <- structure(c(24L, 56L, 47L, 143L, 70L, 38L, 33L, 77L, 50L, 29L, 38L, 67L, 185L, 45L, 59L, 39L), names = c("0000", 
        "0001", "0010", "0011", "0100", "0101", "0110", "0111", "1000", "1001", "1010", "1011", "1100", "1101", "1110", "1111"))
    verbose <- FALSE
    nclass <- 2L
    lcaiter <- 5
    e1071:::lca(x = x, k = nclass, niter = lcaiter, verbose = verbose)
}




