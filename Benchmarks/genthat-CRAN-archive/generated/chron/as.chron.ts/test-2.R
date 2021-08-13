

genthat_extracted_call <- function() {
    AirPassengers <- datasets::AirPassengers
    chron:::as.chron.ts(x = AirPassengers, frac = 0, holidays = TRUE)
}




