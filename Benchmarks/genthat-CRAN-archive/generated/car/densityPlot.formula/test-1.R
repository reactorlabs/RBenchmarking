

genthat_extracted_call <- function() {
    Prestige <- carData::Prestige
    depan <- car::depan
    car:::densityPlot.formula(formula = income ~ type, data = Prestige, legend = list(location = "top"), kernel = depan)
}




