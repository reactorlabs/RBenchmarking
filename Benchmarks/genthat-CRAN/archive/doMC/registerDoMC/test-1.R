library(doMC)

function_to_run <- function() {
    doMC:::registerDoMC(cores = 2)
}




