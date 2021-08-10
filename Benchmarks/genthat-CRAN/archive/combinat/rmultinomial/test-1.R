library(combinat)

function_to_run <- function() {
    p <- structure(c(0.3, 0.1, 0.5, 0.1, 0.1, 0.2, 0.6, 0.8, 0.3), .Dim = c(3L, 3L))
    n <- c(100, 20, 10)
    combinat:::rmultinomial(n = n, p = p)
}




