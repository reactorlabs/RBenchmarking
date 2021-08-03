library(prodlim)

function_to_run <- function() {
    jtimes <- c(1, 2, 5, 7, 9)
    etimes <- c(0, 0.5, 2, 8, 10)
    prodlim:::sindex(jump.times = jtimes, eval.times = etimes)
}




