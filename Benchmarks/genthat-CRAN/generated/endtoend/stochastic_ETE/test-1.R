library(endtoend)

function_to_run <- function() {
    p22 <- 1
    p21 <- 3
    p12 <- 0.6
    p11 <- 0.2
    dist2 <- "beta"
    dist1 <- "uniform"
    endtoend:::stochastic_ETE(dist1 = dist1, p11 = p11, p12 = p12, dist2 = dist2, p21 = p21, p22 = p22, L = 7, N = 5, M = 5 * 
        10^3, printout = FALSE, plotspdf = FALSE)
}




