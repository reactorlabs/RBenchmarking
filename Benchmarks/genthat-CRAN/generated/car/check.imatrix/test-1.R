library(car)

function_to_run <- function() {
    X.design <- structure(c(1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, -1, 0, 1, 0, 0, 0, 1, -2, 1, 0, 0, 0, 0, 0, 0, -1, 0, 1, 
        0, 0, 0, 1, -2, 1), .Dim = c(6L, 6L), .Dimnames = list(c("wl1", "wl2", "wl3", "se1", "se2", "se3"), c("WL", "SE", 
        "WL.L", "WL.Q", "SE.L", "SE.Q")))
    iterms <- c("measure", "month")
    car:::check.imatrix(X = X.design, terms = iterms)
}




