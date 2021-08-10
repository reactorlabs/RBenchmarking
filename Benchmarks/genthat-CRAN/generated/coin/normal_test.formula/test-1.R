library(coin)

function_to_run <- function() {
    asat <- coin::asat
    coin:::normal_test.formula(formula = asat ~ group, data = asat, distribution = "exact", alternative = "greater")
}




