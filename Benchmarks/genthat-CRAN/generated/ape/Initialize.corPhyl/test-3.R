

genthat_extracted_call <- function() {
    X <- structure(list(corStruct = structure(0, formula = ~1, fixed = FALSE, tree = structure(list(edge = structure(c(6L, 
        7L, 8L, 9L, 9L, 8L, 7L, 6L, 7L, 8L, 9L, 1L, 2L, 3L, 4L, 5L), .Dim = c(8L, 2L)), edge.length = c(0.38, 0.13, 0.28, 
        0.21, 0.21, 0.49, 0.62, 1), Nnode = 4L, tip.label = c("Homo", "Pongo", "Macaca", "Ateles", "Galago")), class = "phylo", 
        order = "cladewise"), class = c("corGrafen", "corPhyl", "corStruct"))), class = c("glsStruct", "modelStruct"), conLin = list(Xy = structure(c(1, 
        1, 1, 1, 1, 4.09434, 3.61092, 2.37024, 2.02815, -1.46968, 4.74493, 3.3322, 3.3673, 2.89037, 2.30259), .Dim = c(5L, 
        3L), .Dimnames = list(c("1", "2", "3", "4", "5"), c("(Intercept)", "X", "Y"))), dims = list(N = 5L, p = 2L, REML = 1L), 
        logLik = 0, sigma = 0, fixedSigma = FALSE))
    i <- 1L
    ape:::Initialize.corPhyl(object = X[[i]], data = structure(list(Y = c(4.74493, 3.3322, 3.3673, 2.89037, 2.30259), X = c(4.09434, 
        3.61092, 2.37024, 2.02815, -1.46968)), class = "data.frame", row.names = c(NA, 5L), terms = ~Y + X))
}




