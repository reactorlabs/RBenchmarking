library(DySeq)

function_to_run <- function() {
    CouplesCope <- DySeq::CouplesCope
    DySeq:::ML_Trans(data = CouplesCope, first = 2:49, second = 50:97)
}




