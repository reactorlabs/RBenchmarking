library(distrEx)

function_to_run <- function() {
    f <- genthat::with_env(function(x, c00) abs(d2(x) - c00 * d1(x)), env = list2env(list(d2 = genthat::with_env(function(x, 
        log = FALSE) {
        dt(x, df = 10, ncp = 0, log = log)
    }, env = list2env(list(dt = stats::dt), parent = baseenv())), d1 = genthat::with_env(function(x, log = FALSE) {
        dnorm(x, mean = 0, sd = 1, log = log)
    }, env = list2env(list(dnorm = stats::dnorm), parent = baseenv()))), parent = baseenv()))
    dots <- list(c00 = 0.969285975776173)
    distrEx:::.filterFunargs(dots = dots, fun = f)
}




