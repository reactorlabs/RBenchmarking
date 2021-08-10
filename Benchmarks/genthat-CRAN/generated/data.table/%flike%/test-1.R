library(data.table)

function_to_run <- function() {
    Name <- c("Mary", "George", "Martha")
    data.table:::`%flike%`(vector = Name, pattern = "Mar")
}




