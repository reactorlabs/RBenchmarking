library(car)

function_to_run <- function() {
    a <- c(0.025, 0.975)
    car:::format.perc(probs = a, digits = 3)
}




