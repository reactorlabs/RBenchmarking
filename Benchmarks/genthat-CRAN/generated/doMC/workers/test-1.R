library(doMC)

function_to_run <- function() {
    data <- 2
    doMC:::workers(cores = data)
}




