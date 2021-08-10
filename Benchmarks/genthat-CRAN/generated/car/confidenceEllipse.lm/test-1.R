library(car)

function_to_run <- function() {
    lm <- stats::lm
    Duncan <- carData::Duncan
    car:::confidenceEllipse.lm(model = lm(prestige ~ income + education, data = Duncan), L = c("income + education", "income - education"))
}




