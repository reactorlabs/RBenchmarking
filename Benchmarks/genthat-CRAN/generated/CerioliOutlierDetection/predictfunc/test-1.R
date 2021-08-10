library(CerioliOutlierDetection)

function_to_run <- function() {
    p.dim <- 5L
    n.obs <- 200L
    mcd.alpha <- 0.515
    m.asy <- 28.7656990450627
    CerioliOutlierDetection:::predictfunc(m.asy = m.asy, p = p.dim, n = n.obs, alpha = mcd.alpha)
}




