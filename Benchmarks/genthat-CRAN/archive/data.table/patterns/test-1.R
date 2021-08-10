library(data.table)

function_to_run <- function() {
    pats <- list("^[xv]")
    cols <- c("x", "y", "v")
    data.table:::patterns(pats, cols = cols)
}




