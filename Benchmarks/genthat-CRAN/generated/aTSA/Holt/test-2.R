library(aTSA)

function_to_run <- function() {
    AirPassengers <- datasets::AirPassengers
    aTSA:::Holt(x = AirPassengers, type = "multiplicative")
}




