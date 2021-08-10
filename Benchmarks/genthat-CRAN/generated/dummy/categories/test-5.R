library(dummy)

function_to_run <- function() {
    x <- structure(list(var1 = structure(c(1L, 2L, 2L, 3L), .Label = c("a", "b", "c"), class = "factor"), var2 = structure(c(1L, 
        1L, 2L, 3L), .Label = c("1", "2", "3"), class = "factor"), var3 = c("val1", "val2", "val3", "val3")), class = "data.frame", 
        row.names = c(NA, -4L))
    p <- c(2, 3, 1)
    dummy:::categories(x = x, p = p)
}




