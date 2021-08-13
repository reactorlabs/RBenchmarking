library(car)

function_to_run <- function() {
    lm <- stats::lm
    car:::brief.function(object = lm)
}




