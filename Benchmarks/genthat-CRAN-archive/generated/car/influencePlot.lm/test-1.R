

genthat_extracted_call <- function() {
    lm <- stats::lm
    Duncan <- carData::Duncan
    car:::influencePlot.lm(model = lm(prestige ~ income + education, data = Duncan))
}




