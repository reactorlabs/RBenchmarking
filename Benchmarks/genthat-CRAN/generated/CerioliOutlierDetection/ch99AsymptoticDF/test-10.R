library(CerioliOutlierDetection)

function_to_run <- function() {
    p.dim <- 10
    n.obs <- 500
    mcd.alpha <- 0.51
    CerioliOutlierDetection:::ch99AsymptoticDF(n.obs = n.obs, p.dim = p.dim, mcd.alpha = mcd.alpha)
}




