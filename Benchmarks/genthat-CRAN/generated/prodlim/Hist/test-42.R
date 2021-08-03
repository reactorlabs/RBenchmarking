library(prodlim)

function_to_run <- function() {
    R <- c(2, 3, 12, 8, 9, 10, 7, 12, 12, 12)
    L <- 1:10
    event <- c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
    prodlim:::Hist(time = list(L, R), event = event)
}




