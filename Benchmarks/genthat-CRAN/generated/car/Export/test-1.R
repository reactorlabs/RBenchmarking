library(car)

function_to_run <- function() {
    Duncan <- carData::Duncan
    car:::Export(x = Duncan, file = "Duncan.csv", keep.row.names = "occupation")
}




