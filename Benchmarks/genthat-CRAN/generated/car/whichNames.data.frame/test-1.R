library(car)

function_to_run <- function() {
    Duncan <- carData::Duncan
    car:::whichNames.data.frame(names = c("minister", "conductor"), object = Duncan)
}




