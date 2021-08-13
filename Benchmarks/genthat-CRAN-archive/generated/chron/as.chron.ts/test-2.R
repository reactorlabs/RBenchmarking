library(chron)

function_to_run <- function() {
    AirPassengers <- datasets::AirPassengers
    chron:::as.chron.ts(x = AirPassengers, frac = 0, holidays = TRUE)
}




