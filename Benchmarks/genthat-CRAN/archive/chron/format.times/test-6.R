library(chron)

function_to_run <- function() {
    x <- structure(c(3, 3, 3, 3), class = "times")
    simplify <- FALSE
    chron:::format.times(x = x, simplify = simplify)
}




