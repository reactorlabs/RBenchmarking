

genthat_extracted_call <- function() {
    Prestige <- carData::Prestige
    car:::Boxplot.matrix(y = scale(Prestige[, 1:4]))
}




