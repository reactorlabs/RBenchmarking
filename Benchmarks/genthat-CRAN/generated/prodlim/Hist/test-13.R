library(prodlim)

function_to_run <- function() {
    time <- 1:5
    event <- structure(1:5, .Label = c("a", "b", "c", "d", "e"), class = "factor")
    prodlim:::Hist(time = time, event = event)
}




