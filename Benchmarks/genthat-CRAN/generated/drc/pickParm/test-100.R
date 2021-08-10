library(drc)

function_to_run <- function() {
    parmVec <- c(0, 0, 0, 0, 1)
    notFixed <- c(TRUE, TRUE, TRUE, TRUE, FALSE)
    drc:::pickParm(parmVec = parmVec, indexVec = notFixed, parmNo = 2)
}




