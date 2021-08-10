library(fda)

function_to_run <- function() {
    liptime <- fda::liptime
    lip <- fda::lip
    fda:::smooth.basisPar(argvals = liptime, y = lip, lambda = 1e-09)
}




