

genthat_extracted_call <- function() {
    cmat <- structure(c(1, 0.16, 0.04, 0.38, 0.16, 1, 0.14, 0.47, 0.04, 0.14, 1, 0.68, 0.38, 0.47, 0.68, 1), .Dim = c(4L, 
        4L))
    BinNor:::compute.sigma.star(no.bin = 2, no.nor = 2, prop.vec.bin = c(0.4, 0.7), corr.vec = NULL, corr.mat = cmat)
}




