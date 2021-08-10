library(DT)

function_to_run <- function() {
    escape <- TRUE
    colnames <- c("A", "B", "C", "D", "E")
    DT:::escapeToConfig(escape = escape, colnames = colnames)
}




