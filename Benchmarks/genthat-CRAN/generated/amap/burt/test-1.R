library(amap)

function_to_run <- function() {
    x <- structure(list(color = structure(c(1L, 2L, 2L, 1L, 2L), .Label = c("blue", "red"), class = "factor"), size = structure(c(1L, 
        1L, 3L, 2L, 1L), .Label = c("large", "medium", "small"), class = "factor")), class = "data.frame", row.names = c(NA, 
        -5L))
    amap:::burt(x = x)
}




