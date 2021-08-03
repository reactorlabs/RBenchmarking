library(prodlim)

function_to_run <- function() {
    R <- c(2, NA, 3, 6, 9)
    L <- c(1, 1, 3, 4, 6)
    prodlim:::Hist(time = list(L, R))
}




