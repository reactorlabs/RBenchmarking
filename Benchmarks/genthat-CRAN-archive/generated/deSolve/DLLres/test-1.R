

genthat_extracted_call <- function() {
    y <- structure(c(2, 3, 6), names = c("A", "B", "D.K"))
    prod <- structure(c(0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 0.1, 0.14, 0.18, 0.22, 0.26, 0.3, 0.34, 0.38, 0.42, 0.46, 
        0.5), .Dim = c(11L, 2L))
    pars <- structure(c(1, 1e+06, 1), names = c("K", "ka", "r"))
    dy <- structure(c(0, 0, 0), names = c("dA", "dB", "dD"))
    deSolve:::DLLres(res = "chemres", times = 5, y = y, dy = dy, parms = pars, dllname = "deSolve", initfunc = "initparms", 
        nout = 2, outnames = c("CONC", "Prod"), forcings = prod, initforc = "initforcs")
}




