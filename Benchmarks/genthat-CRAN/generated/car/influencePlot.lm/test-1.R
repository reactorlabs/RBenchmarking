library(car)

function_to_run <- function() {
    lm <- stats::lm
    Duncan <- carData::Duncan
    car:::influencePlot.lm(model = lm(prestige ~ income + education, data = Duncan))
}




