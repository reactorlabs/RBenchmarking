library(data.table)

function_to_run <- function() {
    Name <- c("Mary", "George", "Martha")
    data.table:::`%like%`(vector = Name, pattern = "^Mar")
}




