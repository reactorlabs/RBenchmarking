library(DiceDesign)

function_to_run <- function() {
    n <- 20L
    gof.test.type <- "greenwood"
    DiceDesign:::unif.test.quantile(type = gof.test.type, n = n, alpha = 0.05)
}




