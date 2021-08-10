library(distr)

function_to_run <- function() {
    x <- c(14L, 17L, 5L, 14L, 13L, 12L, 11L, 13L, 7L, 9L)
    Pois <- distr::Pois
    distr:::liesInSupport(object = Pois(1), x = 1000 * x, checkFin = TRUE)
}




