

genthat_extracted_call <- function() {
    vcMat <- structure(c(35.0301591086752, 2.06840861403593e-10, 2.06840861403593e-10, 0.1136705992067), .Dim = c(2L, 2L))
    muVec <- c(11.8898012173981, 1.2044794446681)
    level <- 0.95
    degfree <- 85L
    drc:::fieller(mu = muVec, df = degfree, vcMat = vcMat, level = level)
}




