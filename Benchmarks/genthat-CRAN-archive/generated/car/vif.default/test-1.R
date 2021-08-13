

genthat_extracted_call <- function() {
    lm <- stats::lm
    Duncan <- carData::Duncan
    car:::vif.default(mod = lm(prestige ~ income + education + type, data = Duncan))
}




