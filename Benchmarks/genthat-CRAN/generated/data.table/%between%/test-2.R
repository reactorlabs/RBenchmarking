library(data.table)

function_to_run <- function() {
    c <- 5:1
    b <- 6:10
    data.table:::`%between%`(x = b, y = c(7, 9))
}




