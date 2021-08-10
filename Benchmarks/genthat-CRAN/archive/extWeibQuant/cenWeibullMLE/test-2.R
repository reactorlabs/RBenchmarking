library(extWeibQuant)

function_to_run <- function() {
    wdt <- c(3.5197791695713, 4.42250671597496, 4.64806554781975, 4.76296985313387, 4.97159179162421)
    nIter <- 1000
    n <- 100L
    m <- 5L
    Cx <- 5
    conCr <- 1e-09
    extWeibQuant:::cenWeibullMLE(wdt = wdt, max.dt = Cx, n = n, m = m, conCr = conCr, nIter = nIter)
}




