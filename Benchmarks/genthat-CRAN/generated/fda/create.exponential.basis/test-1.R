library(fda)

function_to_run <- function() {
    fda:::create.exponential.basis(rangeval = c(0, 5), nbasis = 3, ratevec = c(0, -1, -5))
}




