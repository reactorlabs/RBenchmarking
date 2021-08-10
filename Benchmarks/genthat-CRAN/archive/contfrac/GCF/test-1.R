library(contfrac)

function_to_run <- function() {
    z <- 1 + (0+1i)
    n <- 20
    contfrac:::GCF(a = c(z, rep(-z^2, n - 1)), b = seq(from = 1, by = 2, len = n))
}




