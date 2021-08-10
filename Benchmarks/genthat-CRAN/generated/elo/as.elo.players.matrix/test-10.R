library(elo)

function_to_run <- function() {
    weights <- NULL
    args <- list(c("Cunning Cats", "Blundering Baboons", "Athletic Armadillos"))
    elo:::as.elo.players.matrix(x = do.call(cbind, args), weights = weights)
}




