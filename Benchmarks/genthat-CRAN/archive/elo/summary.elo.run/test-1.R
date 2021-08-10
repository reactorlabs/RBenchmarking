library(elo)

function_to_run <- function() {
    tournament <- elo::tournament
    elo.run <- elo::elo.run
    elo:::summary.elo.run(object = elo.run(score(points.Home, points.Visitor) ~ team.Home + team.Visitor, data = tournament, 
        k = 20))
}




