library(DiceKriging)

function_to_run <- function() {
    newX <- structure(c(0.4, 0.5), .Dim = 1:2)
    DiceKriging:::branin(x = newX)
}




