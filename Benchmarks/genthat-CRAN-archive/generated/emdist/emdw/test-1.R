library(emdist)

function_to_run <- function() {
    B. <- structure(c(1, 2, 3), .Dim = c(1L, 3L))
    A. <- structure(c(0.0476190476190476, 0.0952380952380952, 0.142857142857143, 0.19047619047619, 0.238095238095238, 0.285714285714286, 
        1, 2, 1, 2, 1, 2, 1, 1, 2, 2, 3, 3), .Dim = c(6L, 3L))
    emdist:::emdw(A = A.[, -1], wA = A.[, 1], B = B.[, -1, drop = FALSE], wB = B.[, 1])
}




