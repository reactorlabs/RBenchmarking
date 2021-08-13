

genthat_extracted_call <- function() {
    rhs <- c(0, 1)
    L <- structure(c(1, 0, 0, 1), .Dim = c(2L, 2L), .Dimnames = list(c("(Intercept) = 0", "repwt = 1"), c("(Intercept)", 
        "repwt")))
    b <- structure(c(5.33626054874856, 0.927842811189859), names = c("(Intercept)", "repwt"))
    car:::printHypothesis(L = L, rhs = rhs, cnames = names(b))
}




