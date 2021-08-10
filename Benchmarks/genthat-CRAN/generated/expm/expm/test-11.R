library(expm)

function_to_run <- function() {
    test1 <- structure(c(4, 1, 1, 2, 4, 1, 0, 1, 4), .Dim = c(3L, 3L))
    expm:::expm(x = test1, method = "Pade")
}




