library(conf.design)

function_to_run <- function() {
    G <- structure(c(1, 0, 2, 1, 1, 1, 0, 1), .Dim = c(2L, 4L), .Dimnames = list(NULL, c("A", "B", "C", "D")))
    conf.design:::conf.set(G = G, p = 3)
}




