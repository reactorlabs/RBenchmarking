

genthat_extracted_call <- function() {
    weights <- NULL
    args <- list(c("Cunning Cats", "Blundering Baboons", "Athletic Armadillos"))
    elo:::as.elo.players.matrix(x = do.call(cbind, args), weights = weights)
}




