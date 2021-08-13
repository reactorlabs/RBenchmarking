library(entropy)

function_to_run <- function() {
    y2d <- structure(c(1, 6, 2, 5, 3, 4), .Dim = 2:3)
    entropy:::chi2indep.Dirichlet(y2d = y2d, a = 1/6)
}




