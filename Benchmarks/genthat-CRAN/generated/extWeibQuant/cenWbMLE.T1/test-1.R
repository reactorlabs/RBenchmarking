library(extWeibQuant)

function_to_run <- function() {
    newy <- c(3.5197791695713, 4.42250671597496, 4.64806554781975, 4.76296985313387, 4.97159179162421, NA, NA, NA, NA, NA, 
        NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, 
        NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, 
        NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, 
        NA, NA, NA)
    extWeibQuant:::cenWbMLE.T1(dat = newy, Cx = 5)
}




