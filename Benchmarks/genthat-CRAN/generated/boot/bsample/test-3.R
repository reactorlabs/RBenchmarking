

genthat_extracted_call <- function() {
    R <- 999
    gp <- 1:13
    boot:::bsample(x = gp, R * length(gp))
}




