library(conf.design)

function_to_run <- function() {
    g <- structure(c(1L, 1L, 2L, 2L, 3L, 3L), .Label = c("1", "2", "3"), class = "factor")
    f <- structure(c(1L, 1L, 1L, 2L, 2L, 2L), .Label = c("1", "2"), class = "factor")
    conf.design:::join(f, g)
}




