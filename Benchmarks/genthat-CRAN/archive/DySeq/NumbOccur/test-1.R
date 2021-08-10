library(DySeq)

function_to_run <- function() {
    my.last <- c(31, 41, 21, 45, 45, 23, 43, 25, 20, 46, 47, 40, 48, 36, 48, 48, 38, 48, 48, 47, 36, 48, 48, 48, 43, 42, 
        41, 34, 46, 48, 48, 31, 48, 19, 44, 30, 48, 44, 48, 25, 40, 36, 48, 46, 35, 40, 45, 41, 47, 48, 47, 44, 43, 47, 48, 
        39, 47, 48, 46, 48, 45, 36, 45, 42)
    CouplesCope <- DySeq::CouplesCope
    DySeq:::NumbOccur(x = CouplesCope[, 50:97], y = 1, t = my.last)
}




