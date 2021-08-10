library(extWeibQuant)

function_to_run <- function() {
    mmix <- structure(c(0.7, 0.3, 5, 15, 7, 6), .Dim = 2:3)
    extWeibQuant:::quanWbMix(intProb = 0.1, mixParm = mmix)
}




