library(checkmate)

function_to_run <- function() {
    ee <- list2env(list(a = 1), parent = emptyenv())
    checkmate:::testEnvironment(x = ee)
}




