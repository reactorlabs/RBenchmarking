

genthat_extracted_call <- function() {
    X2 <- structure(1:6, .Dim = 2:3)
    X1 <- structure(c(1, 1, 1, 1, 1, 1), .Dim = 2:3, .Dimnames = list(NULL, c("x1", "x2", "x3")))
    DiceKriging:::checkNames(X1 = X1, X2 = X2)
}




