library(prodlim)

function_to_run <- function() {
    x <- structure(list(n = c(3, 8), z = structure(1:2, .Label = c("c", "h"), class = "factor")), class = "data.frame", row.names = c(NA,
        -2L))
    tab <- structure(list(num = 1:26, abc = structure(1:26, .Label = c("a", "b", "c", "d", "e", "f", "g", "h", "i", "j",
        "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"), class = "factor")), class = "data.frame",
        row.names = c(NA, -26L))
    prodlim:::row.match(x = x, table = tab)
}




