library(DT)

function_to_run <- function() {
    escape <- TRUE
    colnames <- c("A", "B", "C", "D", "E")
    DT:::tableHeader(names = colnames, escape = escape)
}




