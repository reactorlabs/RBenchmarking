library(car)

function_to_run <- function() {
    Prestige <- carData::Prestige
    car:::symbox.formula(formula = ~income, data = Prestige)
}




