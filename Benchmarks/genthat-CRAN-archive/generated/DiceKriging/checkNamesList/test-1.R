

genthat_extracted_call <- function() {
    X1 <- structure(c(1, 1, 1, 1, 1, 1), .Dim = 2:3, .Dimnames = list(NULL, c("x1", "x2", "x3")))
    l2 <- list(x3 = 1, x2 = c(2, 3), x1 = -6)
    DiceKriging:::checkNamesList(X1 = X1, l2 = l2)
}




