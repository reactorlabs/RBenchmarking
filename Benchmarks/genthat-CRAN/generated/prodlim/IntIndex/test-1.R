library(prodlim)

function_to_run <- function() {
    R <- structure(c(2, 3, 12, 8, 9, 10, 7, 12, 12, 12), names = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
    peto.intervals <- structure(c(1, 2, 2, 3, 7, 7, 8, 9, 9, 10, 10, 12), .Dim = c(2L, 6L))
    L <- structure(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10), names = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
    prodlim:::IntIndex(x = peto.intervals, L = L, R = R)
}




