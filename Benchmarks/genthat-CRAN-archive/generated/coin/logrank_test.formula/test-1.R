

genthat_extracted_call <- function() {
    GTSG <- coin::GTSG
    coin:::logrank_test.formula(formula = Surv(time, event) ~ group, data = GTSG, type = "Prentice")
}




