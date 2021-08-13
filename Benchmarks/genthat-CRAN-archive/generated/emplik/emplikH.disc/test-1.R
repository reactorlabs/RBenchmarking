library(emplik)

function_to_run <- function() {
    fun4 <- genthat::with_env(function(x, theta) {
        as.numeric(x <= theta)
    }, env = list2env(list(), parent = baseenv()))
    y <- c(-2, -2, -2, 1.5, -1)
    x <- c(1, 2, 3, 4, 5, 6, 5, 4, 3, 4, 1, 2.4, 4.5)
    d <- c(1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 1)
    emplik:::emplikH.disc(x = x, d = d, y = y, K = -0.7, fun = fun4, theta = 4)
}




