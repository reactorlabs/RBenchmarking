library(abind)

function_to_run <- function() {
    abind:::abind(1:4, matrix(5:20, nrow = 4), along = 1)
}




