library(fBasics)

function_to_run <- function() {
    control <- structure(list(n = 211, seed = 54, name = "generator"), class = "control")
    fBasics:::print.control(x = control)
}




