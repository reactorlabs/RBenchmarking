library(DT)

function_to_run <- function() {
    names <- c(" ", "temperature", "pressure")
    escape <- TRUE
    DT:::escapeColNames(colnames = names, i = escape)
}




