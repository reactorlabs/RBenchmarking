

genthat_extracted_call <- function() {
    v <- 5L
    n <- 200L
    mcd.alpha <- 0.515
    hrdf.method <- "GM14"
    delta <- 0.025
    CerioliOutlierDetection:::hr05CutoffMvnormal(n.obs = n, p.dim = v, mcd.alpha = mcd.alpha, signif.alpha = delta, method = hrdf.method)
}




