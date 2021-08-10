library(ergm)

function_to_run <- function() {
    a <- list(weights = c(1L, 54264L, 1330L, 1330L, 21L, 293930L, 21L, 203490L, 293930L, 116280L, 20349L, 352716L, 116280L, 
        210L, 203490L, 210L, 5985L, 54264L, 5985L, 352716L, 1L, 20349L), statmat = structure(c(0, 15, 18, 3, 20, 9, 1, 8, 
        12, 7, 16, 10, 14, 19, 13, 2, 17, 6, 4, 11, 21, 5), .Dim = c(22L, 1L), .Dimnames = list(NULL, "edges")))
    ergm:::ergm.exact(eta = 0.1234, formula = mynw ~ edges, statmat = a$statmat, weights = a$weights)
}




