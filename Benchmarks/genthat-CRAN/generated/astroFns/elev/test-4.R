library(astroFns)

function_to_run <- function() {
    dms2rad <- astroFns::dms2rad
    astroFns:::elev(dec.sou = dms2rad("-28, 20"))
}




