library(cpk)

function_to_run <- function() {
    wtkg <- 181
    f <- 1
    dr <- 6.471
    cl <- 1.43
    cpk:::bc.ttc.fn(dr = dr, f = f, cl = cl, wtkg = wtkg)
}




