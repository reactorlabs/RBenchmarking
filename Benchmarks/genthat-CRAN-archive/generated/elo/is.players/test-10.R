

genthat_extracted_call <- function() {
    mf <- structure(list(elo.A = structure(c("Cunning Cats", "Blundering Baboons", "Athletic Armadillos"), .Dim = c(3L, 1L), 
        class = c("elo.players.matrix", "matrix"), weights = 1), elo.B = c("Fabulous Frogs", "Gallivanting Gorillas", "Helpless Hyenas"), 
        home.field = c(1, 1, 1), adj.A = c(0, 0, 0), adj.B = c(0, 0, 0)), row.names = c(NA, 3L), terms = ~team.Home + team.Visitor, 
        outcome = "score", class = "data.frame")
    elo:::is.players(x = mf$elo.B)
}




