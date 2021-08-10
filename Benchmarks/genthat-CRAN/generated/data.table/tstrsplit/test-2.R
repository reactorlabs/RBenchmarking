library(data.table)

function_to_run <- function() {
    x <- c("A/B", "A", "B")
    data.table:::tstrsplit(x = x, "/", fixed = TRUE)
}




