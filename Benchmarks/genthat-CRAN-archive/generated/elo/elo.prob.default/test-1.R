

genthat_extracted_call <- function() {
    elo.B <- c(1500, 1600)
    elo.A <- c(1500, 1500)
    adjust.B <- 0
    adjust.A <- 0
    elo:::elo.prob.default(elo.A = elo.A, elo.B = elo.B, adjust.A = adjust.A, adjust.B = adjust.B)
}




