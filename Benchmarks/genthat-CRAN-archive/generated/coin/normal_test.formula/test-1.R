

genthat_extracted_call <- function() {
    asat <- coin::asat
    coin:::normal_test.formula(formula = asat ~ group, data = asat, distribution = "exact", alternative = "greater")
}




