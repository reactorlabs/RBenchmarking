

genthat_extracted_call <- function() {
    yini <- 1.25092558324419
    V <- structure(c(13.6666666666667, -7.50555349946513, -7.50555349946513, 5), .Dim = c(2L, 2L))
    quiet <- TRUE
    ITMAX <- 20L
    eps <- 1e-10
    clusterGeneration:::newtonRaphson(yini = yini, V = V, ITMAX = ITMAX, eps = eps, quiet = quiet)
}




