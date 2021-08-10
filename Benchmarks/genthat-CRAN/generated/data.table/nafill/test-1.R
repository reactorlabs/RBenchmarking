library(data.table)

function_to_run <- function() {
    x <- c(NA, NA, 3L, 4L, NA, NA, 7L, 8L, NA, NA)
    data.table:::nafill(x = x, type = "locf")
}




