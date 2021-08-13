library(data.table)

function_to_run <- function() {
    b <- 6:10
    data.table:::between(x = b, lower = 7, upper = 9)
}




