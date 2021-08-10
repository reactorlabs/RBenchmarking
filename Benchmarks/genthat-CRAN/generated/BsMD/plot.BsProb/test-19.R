library(BsMD)

function_to_run <- function() {
    y <- c(14, 16.8, 15, 15.4, 27.6, 24, 27.4, 22.6, 22.3, 17.1, 21.5, 17.5, 15.9, 21.9, 16.7, 20.3, 29.4, 19.7, 13.6, 24.7)
    X <- structure(c(-1L, 1L, -1L, 1L, -1L, 1L, -1L, 1L, 1L, -1L, 1L, -1L, 1L, -1L, 1L, -1L, -1L, -1L, 1L, 1L, -1L, -1L, 
        1L, 1L, -1L, -1L, 1L, 1L, 1L, 1L, -1L, -1L, 1L, 1L, -1L, -1L, 1L, 1L, 1L, 1L, -1L, -1L, -1L, -1L, 1L, 1L, 1L, 1L, 
        1L, 1L, 1L, 1L, -1L, -1L, -1L, -1L, 1L, -1L, -1L, 1L, 1L, -1L, -1L, 1L, 1L, -1L, -1L, 1L, -1L, 1L, 1L, -1L, -1L, 
        1L, 1L, -1L, 1L, -1L, -1L, 1L, 1L, -1L, 1L, -1L, -1L, 1L, -1L, 1L, -1L, 1L, -1L, 1L, 1L, -1L, 1L, -1L, -1L, -1L, 
        1L, 1L, 1L, 1L, -1L, -1L, -1L, -1L, 1L, 1L, -1L, -1L, 1L, 1L, 1L, 1L, -1L, -1L, -1L, 1L, -1L, 1L, -1L, 1L, 1L, -1L, 
        1L, -1L, -1L, 1L, 1L, -1L, -1L, 1L, -1L, 1L, 1L, -1L, -1L, 1L, -1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, -1L, -1L, 
        -1L, -1L, -1L, -1L, -1L, -1L, 1L, 1L, 1L, 1L, -1L, -1L, -1L, -1L, -1L, -1L, -1L, -1L, -1L, -1L, -1L, -1L, -1L, -1L, 
        -1L, -1L, 1L, 1L, 1L, 1L), .Dim = c(20L, 9L), .Dimnames = list(NULL, c("A", "B", "C", "D", "E", "F", "G", "H", "blk")))
    prob <- 0.25
    gamma <- 2
    BsProb <- BsMD::BsProb
    BsMD:::plot.BsProb(x = BsProb(X = X, y = y, blk = 0, mFac = 9, mInt = 3, p = prob, g = gamma, ng = 1, nMod = 5), code = FALSE, 
        prt = TRUE, main = "b) FF with Extra Runs")
}




