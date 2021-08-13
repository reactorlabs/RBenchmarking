

genthat_extracted_call <- function() {
    AirPassengers <- datasets::AirPassengers
    aTSA:::Holt(x = AirPassengers, type = "multiplicative")
}




