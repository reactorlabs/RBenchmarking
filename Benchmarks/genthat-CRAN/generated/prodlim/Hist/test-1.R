library(prodlim)

function_to_run <- function() {
    time <- 1:7
    outcome <- structure(c(2L, 1L, 3L, 2L, 3L, 3L, 1L), .Label = c("0", "cause1", "cause2"), class = "factor")
    prodlim:::Hist(time = time, event = outcome != "0")
}




