library(coin)

function_to_run <- function() {
    alpha <- coin::alpha
    coin:::kruskal_test.formula(formula = elevel ~ alength, data = alpha)
}




