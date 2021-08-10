library(car)

function_to_run <- function() {
    lm <- stats::lm
    Duncan <- carData::Duncan
    car:::qqPlot.lm(x = lm(prestige ~ income + education + type, data = Duncan), envelope = 0.99)
}




