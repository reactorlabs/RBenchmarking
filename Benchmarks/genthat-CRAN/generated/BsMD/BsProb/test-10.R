library(BsMD)

function_to_run <- function() {
    y <- c(56L, 93L, 67L, 60L, 77L, 65L, 95L, 49L, 44L, 63L, 63L, 61L)
    X <- structure(c(1L, 1L, -1L, 1L, 1L, 1L, -1L, -1L, -1L, 1L, -1L, -1L, -1L, 1L, 1L, -1L, 1L, 1L, 1L, -1L, -1L, -1L, 1L, 
        -1L, 1L, -1L, 1L, 1L, -1L, 1L, 1L, 1L, -1L, -1L, -1L, -1L, -1L, 1L, -1L, 1L, 1L, -1L, 1L, 1L, 1L, -1L, -1L, -1L, 
        -1L, -1L, 1L, -1L, 1L, 1L, -1L, 1L, 1L, 1L, -1L, -1L), .Dim = c(12L, 5L), .Dimnames = list(NULL, c("A", "B", "C", 
        "D", "E")))
    prob <- 0.25
    gamma <- 1.6
    BsMD:::BsProb(X = X, y = y, blk = 0, mFac = 5, mInt = 3, p = prob, g = gamma, ng = 1, nMod = 10)
}




