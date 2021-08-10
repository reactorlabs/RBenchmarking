library(emplik)

function_to_run <- function() {
    fun4 <- genthat::with_env(function(x, theta) {
        as.numeric(x <= theta)
    }, env = list2env(list(), parent = baseenv()))
    z1 <- c(1, 2, 3, 4, 5)
    d1 <- c(1, 1, 0, 1, 1)
    emplik:::emplikH2.test(x = z1, d = d1, K = log(2), fun = fun4, theta = 3.5)
}




