library(coin)

function_to_run <- function() {
    GTSG <- coin::GTSG
    coin:::logrank_test.formula(formula = Surv(time, event) ~ group, data = GTSG, type = "Prentice")
}




