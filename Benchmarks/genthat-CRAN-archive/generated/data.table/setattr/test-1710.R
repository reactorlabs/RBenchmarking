library(data.table)

function_to_run <- function() {
    ans <- list(start = c(NA, NA, 20, NA), end = c(NA, NA, 35, NA), val1 = c(NA, NA, 2L, NA))
    data.table:::setattr(x = ans, name = ".internal.selfref", value = NULL)
}




