library(prodlim)

function_to_run <- function() {
    status <- structure(c(2, 2, 2, 2, 2, 2, 1, 2, 2, 2), names = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
    R <- structure(c(2, 3, 12, 8, 9, 10, 7, 12, 12, 12), names = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
    L <- structure(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10), names = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
    prodlim:::PetoInt(L = L, R = R, status = status)
}




