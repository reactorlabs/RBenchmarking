

genthat_extracted_call <- function() {
    tournament <- elo::tournament
    elo:::elo.winpct(formula = mov(points.Home, points.Visitor) ~ team.Home + team.Visitor, data = tournament, family = "gaussian")
}




