

genthat_extracted_call <- function() {
    Prestige <- carData::Prestige
    car:::boxTidwell.formula(formula = prestige ~ income + education, other.x = ~type + poly(women, 2), data = Prestige)
}




