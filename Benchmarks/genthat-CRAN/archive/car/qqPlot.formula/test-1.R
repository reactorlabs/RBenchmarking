library(car)

function_to_run <- function() {
    Prestige <- carData::Prestige
    car:::qqPlot.formula(formula = income ~ type, data = Prestige, layout = c(1, 3))
}




