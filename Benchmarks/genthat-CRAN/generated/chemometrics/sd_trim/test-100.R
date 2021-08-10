library(chemometrics)

function_to_run <- function() {
    yresj <- c(0, 4.29710013530616, -6.344156849664)
    trim <- 0.2
    chemometrics:::sd_trim(x = yresj, trim = trim)
}




