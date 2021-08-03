library(prodlim)

function_to_run <- function() {
    times <- c(1, 3, 5)
    time <- c(0.597364679005719, 2.34600241418988, 6.19802755334038)
    prodlim:::sindex(jump.times = time, eval.times = times)
}




