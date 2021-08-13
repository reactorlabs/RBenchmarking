

genthat_extracted_call <- function() {
    dat <- structure(list(wins.A = c(1, 0), elo.A = c(1500, 1500), elo.B = c(1500, 1600), k = c(20, 20)), class = "data.frame", 
        row.names = c(NA, -2L))
    elo:::elo.update.formula(formula = wins.A ~ elo.A + elo.B + k(k), data = dat)
}




