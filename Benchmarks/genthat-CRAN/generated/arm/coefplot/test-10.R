library(arm)

function_to_run <- function() {
    varnames <- c("InflMedium", "InflHigh", "TypeApartment", "TypeAtrium", "TypeTerrace", "ContHigh", "Low|Medium", "Medium|High")
    sds <- structure(c(0.104652784933519, 0.127156148851928, 0.119238013698556, 0.155173338051194, 0.151486024299045, 0.0955357985611663, 
        0.124847246308485, 0.125471940342996), names = c("InflMedium", "InflHigh", "TypeApartment", "TypeAtrium", "TypeTerrace", 
        "ContHigh", "Low|Medium", "Medium|High"))
    coefs <- structure(c(0.566393738890106, 1.28881906381232, -0.572350146429611, -0.366186566153346, -1.09101490767244, 
        0.360284149947385, -0.4961353438375, 0.690708290379271), names = c("InflMedium", "InflHigh", "TypeApartment", "TypeAtrium", 
        "TypeTerrace", "ContHigh", "Low|Medium", "Medium|High"))
    arm:::coefplot(object = coefs, sds, varnames = varnames, main = "polr")
}




