library(drc)

function_to_run <- function() {
    startVec <- c(2.39932135682289, 8.363691111556, 3.45649646537463)
    robust <- "mean"
    numObs <- 24L
    callDetail <- drm(formula = rootl ~ conc, data = ryegrass, fct = LL.3())
    drc:::drmRobust(robust = robust, fctCall = callDetail, lenData = numObs, lenPar = length(startVec))
}




