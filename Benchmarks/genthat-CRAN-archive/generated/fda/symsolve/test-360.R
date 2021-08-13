

genthat_extracted_call <- function() {
    A <- structure(c(2, 1, 1, 2), .Dim = c(2L, 2L))
    fda:::symsolve(Asym = A, Bmat = diag(2))
}




