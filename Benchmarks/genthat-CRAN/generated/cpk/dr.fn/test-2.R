library(cpk)

function_to_run <- function() {
    wtkg <- 181
    ttc <- 25
    f <- 1
    cl <- 1.43
    cpk:::dr.fn(ttc = ttc, cl = cl, wtkg = wtkg, f = f)
}




