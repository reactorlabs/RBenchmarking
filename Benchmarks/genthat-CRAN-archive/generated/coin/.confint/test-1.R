library(coin)

function_to_run <- function() {
    parm <- "location"
    object1 <- .ext.1
    level <- 0.95
    coin:::.confint(object1 = object1@statistic, object2 = object1@distribution, parm, level)
}




