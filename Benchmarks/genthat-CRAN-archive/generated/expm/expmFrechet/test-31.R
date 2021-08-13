

genthat_extracted_call <- function() {
    E <- structure(c(0.001, 0.001, 0.001, 0.001, 0.001, 0.001, 0.001, 0.001, 0.001, 0.001, 0.001, 0.001, 0.001, 0.001, 0.001, 
        0.001), .Dim = c(4L, 4L))
    A <- structure(c(1, 1, 1, 1, 2, 3, 2, 3, 5, 6, 7, 8, 9, 1, 5, 3), .Dim = c(4L, 4L))
    expm:::expmFrechet(A = A, E = E)
}




