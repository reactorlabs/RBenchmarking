

genthat_extracted_call <- function() {
    pars <- c(11254.003730192, 25.3104131147796)
    calCurve <- "intcal13"
    Bchron:::BchronCalibrate(ages = round(pars[1]), ageSds = round(pars[2]), calCurves = calCurve)
}




