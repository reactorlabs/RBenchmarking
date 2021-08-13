library(crank)

function_to_run <- function() {
    lwmat <- structure(c(3, NA, 2, 1, 2, NA, 2, 1, 1, 4, NA, NA), .Dim = 3:4)
    crank:::lwscreen(x = lwmat)
}




