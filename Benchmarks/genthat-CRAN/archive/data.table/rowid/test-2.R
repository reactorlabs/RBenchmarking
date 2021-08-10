library(data.table)

function_to_run <- function() {
    x <- c(20, 10, 10, 30, 30, 20)
    data.table:::rowid(x, prefix = "group")
}




