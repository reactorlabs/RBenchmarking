library(prodlim)

function_to_run <- function() {
    time <- 1:3
    status <- 1:3
    prodlim:::Hist(time = time, event = status, cens.code = 2)
}




