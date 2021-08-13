

genthat_extracted_call <- function() {
    XY <- structure(c(1, 2, 5, 7, 9, 3, 6, 8, 7, 6, 8, 7, 5, 7, 2, 4), .Dim = c(8L, 2L))
    ParAini <- structure(c(0.25, 0, 1, 0, 0, -1), .Dim = c(6L, 1L))
    LambdaIni <- 0.1
    conicfit:::fit.conicLMA(XY = XY, ParAini = ParAini, LambdaIni = LambdaIni)
}




