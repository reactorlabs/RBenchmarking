library(prodlim)

function_to_run <- function() {
    prodlim:::Hist(time = 1:10, event = c(99, "event", 99, 99, 99, "event", 99, "event", 99, 99), cens.code = 99)
}




