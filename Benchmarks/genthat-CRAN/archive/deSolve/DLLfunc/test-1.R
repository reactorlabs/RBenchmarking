library(deSolve)

function_to_run <- function() {
    Yini <- 60
    parms <- structure(0.01, names = "k")
    Flux <- structure(c(1, 2, 0.654, 0.167), .Dim = c(2L, 2L))
    deSolve:::DLLfunc(func = "scocder", times = 1, y = Yini, parms = parms, dllname = "deSolve", initfunc = "scocpar", nout = 2, 
        outnames = c("Mineralisation", "Depo"), forcings = Flux, initforc = "scocforc")
}




