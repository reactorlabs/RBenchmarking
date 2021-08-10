library(cluster)

function_to_run <- function() {
    loc <- structure(c(278.667609709739, 0, 67.9982578011491, 0), .Dim = c(2L, 2L))
    i <- 1L
    d2 <- c(2, 0)
    A <- list(structure(c(6626.8083483356, 4898.45627737375, 4898.45627737375, 4080.27033674672), .Dim = c(2L, 2L)), NULL)
    cluster:::ellipsoidPoints(A = A[[i]], d2 = d2[i], loc = loc[i, ], n.half = 201)
}




