library(elo)

function_to_run <- function() {
    wins.A <- c(1, 0)
    k <- 20
    elo.B <- c(1500, 1600)
    elo.A <- c(1500, 1500)
    adjust.B <- 0
    adjust.A <- 0
    elo:::elo.update.default(wins.A = wins.A, elo.A = elo.A, elo.B = elo.B, k = k, adjust.A = adjust.A, adjust.B = adjust.B)
}




