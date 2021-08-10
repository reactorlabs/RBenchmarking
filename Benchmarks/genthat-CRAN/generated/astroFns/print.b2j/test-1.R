library(astroFns)

function_to_run <- function() {
    x <- structure(list(ra2000 = "17:45:40.0", dec2000 = "-29:00:28"), class = "b2j")
    astroFns:::print.b2j(x = x)
}




