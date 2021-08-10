library(arules)

function_to_run <- function() {
    x <- .ext.1
    transactions <- .ext.2
    reuse <- TRUE
    arules:::.imbalance(x = x, transactions = transactions, reuse = reuse)
}




