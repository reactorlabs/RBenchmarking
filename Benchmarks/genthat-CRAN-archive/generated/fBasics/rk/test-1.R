

genthat_extracted_call <- function() {
    P <- structure(c(1, 1, 1, 1, 1, 1, 2, 3, 4, 5, 1, 3, 6, 10, 15, 1, 4, 10, 20, 35, 1, 5, 15, 35, 70), .Dim = c(5L, 5L))
    fBasics:::rk(x = P, method = "chol")
}




