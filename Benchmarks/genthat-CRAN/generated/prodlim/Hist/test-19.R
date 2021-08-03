library(prodlim)

function_to_run <- function() {
    time <- 1:4
    status <- 1:4
    prodlim:::Hist(time = time, event = status, cens.code = 2)
}




