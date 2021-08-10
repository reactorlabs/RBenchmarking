library(FactoMineR)

function_to_run <- function() {
    iris <- datasets::iris
    FactoMineR:::DMFA(don = iris, num.fact = 5)
}




