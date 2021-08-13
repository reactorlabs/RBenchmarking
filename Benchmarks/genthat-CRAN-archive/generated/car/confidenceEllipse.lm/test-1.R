

genthat_extracted_call <- function() {
    lm <- stats::lm
    Duncan <- carData::Duncan
    car:::confidenceEllipse.lm(model = lm(prestige ~ income + education, data = Duncan), L = c("income + education", "income - education"))
}




