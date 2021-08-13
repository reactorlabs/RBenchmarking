

genthat_extracted_call <- function() {
    Prestige <- carData::Prestige
    car:::qqPlot.formula(formula = income ~ type, data = Prestige, layout = c(1, 3))
}




