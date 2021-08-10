library(data.table)

function_to_run <- function() {
    ORDERING_TYPES <- data.table:::ORDERING_TYPES
    .xi <- c(10, 20, 30, 15, 35, 45)
    data.table:::`%chin%`(x = typeof(.xi), table = ORDERING_TYPES)
}




