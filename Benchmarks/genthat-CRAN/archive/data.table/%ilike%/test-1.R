library(data.table)

function_to_run <- function() {
    Name <- c("Mary", "George", "Martha")
    data.table:::`%ilike%`(vector = Name, pattern = "mar")
}




