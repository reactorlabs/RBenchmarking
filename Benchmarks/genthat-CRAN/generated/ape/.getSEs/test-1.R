library(ape)

function_to_run <- function() {
    out.nlm <- list(minimum = 12.2224896611876, estimate = 0.00199604780452523, gradient = -0.839892698474287, hessian = structure(429422.002070014, 
        .Dim = c(1L, 1L)), code = 3L, iterations = 1L)
    ape:::.getSEs(out = out.nlm)
}




