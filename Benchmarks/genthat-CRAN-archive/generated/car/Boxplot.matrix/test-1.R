library(car)

function_to_run <- function() {
    Prestige <- carData::Prestige
    car:::Boxplot.matrix(y = scale(Prestige[, 1:4]))
}




