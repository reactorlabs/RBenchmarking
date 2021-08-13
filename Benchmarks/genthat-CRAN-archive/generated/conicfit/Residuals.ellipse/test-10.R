

genthat_extracted_call <- function() {
    XY <- structure(c(1, 2, 5, 7, 9, 3, 6, 8, 7, 6, 8, 7, 5, 7, 2, 4), .Dim = c(8L, 2L))
    ParGTemp <- structure(c(2.69961871022583, 3.81595973362623, 6.51871439455449, 3.03188527578524, 0.359624086432374), .Dim = c(5L, 
        1L))
    conicfit:::Residuals.ellipse(XY = XY, ParG = ParGTemp)
}




