library(expm)

function_to_run <- function() {
    D0 <- structure(c(1, 0, 0, 0), .Dim = c(2L, 2L))
    expm:::logm(x = D0)
}




