

genthat_extracted_call <- function() {
    X <- structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, -1, -1, -1, -1, 0, 0, 0, 0, 1, 1, 1, 1, 
        -1, -1, -1, -1, 1, 1, -1, -1, 1, 1, -1, -1, 1, 1, -1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1), .Dim = c(12L, 
        5L), .Dimnames = list(c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"), c("(Intercept)", "a11", "a12", 
        "b11", "c11")), assign = c(0L, 1L, 1L, 2L, 3L), contrasts = list(a1 = "contr.sum", b1 = "contr.sum", c1 = "contr.sum"))
    tabdim <- c(3, 2, 2)
    ofreq <- c(121, 13, 44, 37, 158, 69, 100, 79, 24, 0, 26, 3)
    cfa:::fCFA(m.i = ofreq, X = X, tabdim = tabdim)
}




