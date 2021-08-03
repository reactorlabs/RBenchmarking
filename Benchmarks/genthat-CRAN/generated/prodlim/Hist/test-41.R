library(prodlim)

function_to_run <- function() {
    status <- c(1, 1, 0, 1, 1, 1, 1, 0, 0, 0)
    R <- c(2, 3, 12, 8, 9, 10, 7, 12, 12, 12)
    L <- 1:10
    prodlim:::Hist(time = list(L, R), event = status)
}




