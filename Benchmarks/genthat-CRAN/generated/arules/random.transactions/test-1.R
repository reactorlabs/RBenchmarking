library(arules)

function_to_run <- function() {
    arules:::random.transactions(nItems = 200, nTrans = 1000, lambda = 5, iProb = seq(0.2, 1e-04, length = 200))
}




