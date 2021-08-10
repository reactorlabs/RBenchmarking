library(car)

function_to_run <- function() {
    model <- ~phase * hour
    car:::has.intercept.default(model = model)
}




