

genthat_extracted_call <- function() {
    alpha <- coin::alpha
    coin:::kruskal_test.formula(formula = elevel ~ alength, data = alpha)
}




