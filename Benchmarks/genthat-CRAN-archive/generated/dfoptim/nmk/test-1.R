

genthat_extracted_call <- function() {
    hald <- genthat::with_env(function(x) {
        i <- 1:21
        t <- -1 + (i - 1)/10
        f <- (x[1] + x[2] * t)/(1 + x[3] * t + x[4] * t^2 + x[5] * t^3) - exp(t)
        max(abs(f))
    }, env = list2env(list(), parent = baseenv()))
    p0 <- c(0.889539316063747, 0.6928034061566, 0.640506813768297, 0.994269776623696, 0.655705799115822)
    dfoptim:::nmk(par = p0, fn = hald)
}




