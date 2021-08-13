

genthat_extracted_call <- function() {
    ytrans <- genthat::with_env(function(y, cVal, dVal) {
        log((dVal - y)/(y - cVal))
    }, env = list2env(list(), parent = baseenv()))
    drc:::findbe1(doseTr = function(x) {
        rVec <- log(x)
        rVec[!x > 0 | !is.finite(x)] <- NA
        rVec
    }, respTr = ytrans)
}




