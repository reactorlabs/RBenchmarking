

genthat_extracted_call <- function() {
    Prestige <- carData::Prestige
    car:::Boxplot.formula(formula = ~income, data = Prestige, id = list(n = Inf))
}




