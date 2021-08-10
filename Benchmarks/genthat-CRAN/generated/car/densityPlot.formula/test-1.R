library(car)

function_to_run <- function() {
    Prestige <- carData::Prestige
    depan <- car::depan
    car:::densityPlot.formula(formula = income ~ type, data = Prestige, legend = list(location = "top"), kernel = depan)
}




