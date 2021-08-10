library(car)

function_to_run <- function() {
    rnorm <- stats::rnorm
    car:::brief.numeric(object = rnorm(100))
}




