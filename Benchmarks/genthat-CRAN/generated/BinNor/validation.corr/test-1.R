

genthat_extracted_call <- function() {
    prop.vec.bin <- c(0.4, 0.7)
    no.nor <- 2
    no.bin <- 2
    corr.vec <- NULL
    corr.mat <- structure(c(1, 0.16, 0.04, 0.38, 0.16, 1, 0.14, 0.47, 0.04, 0.14, 1, 0.68, 0.38, 0.47, 0.68, 1), .Dim = c(4L, 
        4L))
    BinNor:::validation.corr(no.bin = no.bin, no.nor = no.nor, prop.vec.bin = prop.vec.bin, corr.vec = corr.vec, corr.mat = corr.mat)
}




