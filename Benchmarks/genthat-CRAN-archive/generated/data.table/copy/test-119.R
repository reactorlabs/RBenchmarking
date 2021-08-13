library(data.table)

function_to_run <- function() {
    x <- c("red", "green", "green", "green", "green", "yellow", "red", "yellow", "green", "red", "green", "yellow", "red", 
        "red", "green", "green", "yellow", "green", "red", "green", "green", "green", "green", "red")
    data.table:::copy(x = x)
}




