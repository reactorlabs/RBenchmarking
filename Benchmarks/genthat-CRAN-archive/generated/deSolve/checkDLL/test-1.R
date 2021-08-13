

genthat_extracted_call <- function() {
    verbose <- FALSE
    outnames <- c("Mineralisation", "Depo")
    nout <- 2
    jacfunc <- NULL
    initfunc <- "scocpar"
    func <- "scocder"
    dllname <- "deSolve"
    deSolve:::checkDLL(func = func, jacfunc = jacfunc, dllname = dllname, initfunc = initfunc, verbose = verbose, nout = nout, 
        outnames = outnames)
}




