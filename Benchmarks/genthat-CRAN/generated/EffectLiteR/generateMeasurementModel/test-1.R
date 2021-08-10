library(EffectLiteR)

function_to_run <- function() {
    ncells <- 2
    names <- c("eta", "xi", "mf")
    indicators <- list(eta = c("y12", "y22"), xi = c("y11", "y21"), mf = c("y12", "y22"))
    EffectLiteR:::generateMeasurementModel(names = names, indicators = indicators, ncells = ncells)
}




