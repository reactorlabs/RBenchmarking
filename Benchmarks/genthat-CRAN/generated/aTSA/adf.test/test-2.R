library(aTSA)

function_to_run <- function() {
    co2 <- datasets::co2
    aTSA:::adf.test(x = co2)
}




