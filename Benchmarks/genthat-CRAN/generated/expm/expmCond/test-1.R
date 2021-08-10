library(expm)

function_to_run <- function() {
    A <- structure(c(-0.3, 0.6, -0.7, 0.2, 0.3, 1.2, 0.6, -0.1, 0.9), .Dim = c(3L, 3L))
    expm:::expmCond(A = A, method = "1.est")
}




