

genthat_extracted_call <- function() {
    d1 <- genthat::with_env(function(x, log = FALSE) {
        d00 <- d0(x, log = log)
        d00 <- if (log) 
            d00 - log(stand)
        else d00/stand
        return(d00)
    }, env = list2env(list(d0 = genthat::with_env(function(x, log = FALSE) {
        d <- exp(-abs(x^3))
        if (log) d <- log(d)
        return(d)
    }, env = list2env(list(), parent = baseenv())), stand = 1.78595902314628), parent = baseenv()))
    up1 <- 4
    ngrid <- 4096
    low1 <- -4
    distr:::.D2P(d = d1, ql = low1, qu = up1, ngrid = ngrid)
}




