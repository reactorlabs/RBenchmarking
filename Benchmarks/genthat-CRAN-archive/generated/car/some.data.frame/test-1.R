library(car)

function_to_run <- function() {
    Duncan <- carData::Duncan
    car:::some.data.frame(x = Duncan, cols = names(Duncan)[1:3])
}




