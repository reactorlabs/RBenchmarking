library(cpk)

function_to_run <- function() {
    wtkg <- 86
    vd <- 2.8
    f <- 0.74
    dpo <- 3440
    ar <- 2.4
    cpk:::cmax.fn(f = f, dpo = dpo, vd = vd, ar = ar, wtkg = wtkg)
}




