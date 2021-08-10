library(cpk)

function_to_run <- function() {
    wtkg <- 86
    f <- 0.74
    dpo <- 3440
    di <- 4
    cl <- 0.37
    ar <- 1.4
    cpk:::css.fn(f = f, dpo = dpo, di = di, cl = cl, ar = ar, wtkg = wtkg)
}




