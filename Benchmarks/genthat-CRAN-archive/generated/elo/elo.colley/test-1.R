library(elo)

function_to_run <- function() {
    tournament <- elo::tournament
    elo:::elo.colley(formula = score(points.Home, points.Visitor) ~ team.Home + team.Visitor, data = tournament, subset = points.Home != 
        points.Visitor)
}




