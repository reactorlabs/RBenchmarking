

genthat_extracted_call <- function() {
    XY <- structure(c(1, 2, 5, 7, 9, 3, 6, 8, 7, 6, 8, 7, 5, 7, 2, 4), .Dim = c(8L, 2L))
    ParGini <- structure(c(0, 0, 2, 1, 0), .Dim = c(5L, 1L))
    LambdaIni <- 0.1
    conicfit:::fit.ellipseLMG(XY = XY, ParGini = ParGini, LambdaIni = LambdaIni)
}




