library(extWeibQuant)

function_to_run <- function() {
    mmix <- structure(c(0.7, 0.3, 5, 15, 7, 6), .Dim = 2:3)
    extWeibQuant:::simWbMix(n = 100, mixParm = mmix)
}




