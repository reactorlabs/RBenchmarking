library(car)

function_to_run <- function() {
    Prestige <- carData::Prestige
    car:::Boxplot.formula(formula = ~income, data = Prestige, id = list(n = Inf))
}




