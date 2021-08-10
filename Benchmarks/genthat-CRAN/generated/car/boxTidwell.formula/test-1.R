library(car)

function_to_run <- function() {
    Prestige <- carData::Prestige
    car:::boxTidwell.formula(formula = prestige ~ income + education, other.x = ~type + poly(women, 2), data = Prestige)
}




