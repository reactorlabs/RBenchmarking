

genthat_extracted_call <- function() {
    func <- genthat::with_env(function(t, y, p) {
        yd1 <- -p["k1"] * y[1] + p["k2"] * y[2] * y[3]
        yd3 <- p["k3"] * y[2]^2
        list(c(yd1, -yd1 - yd3, yd3), c(massbalance = sum(y)))
    }, env = list2env(list(), parent = baseenv()))
    y <- c(1, 0, 0)
    times <- c(0, 0.4, 4, 40, 400, 4000, 40000, 4e+05, 4e+06, 4e+07, 4e+08, 4e+09, 4e+10)
    tcrit <- NULL
    rtol <- 1e-04
    jacfunc <- NULL
    hmin <- 0
    hmax <- Inf
    hini <- 0
    dllname <- NULL
    atol <- c(1e-06, 1e-10, 1e-06)
    deSolve:::checkInput(y = y, times = times, func = func, rtol = rtol, atol = atol, jacfunc = jacfunc, tcrit = tcrit, hmin = hmin, 
        hmax = hmax, hini = hini, dllname = dllname)
}




