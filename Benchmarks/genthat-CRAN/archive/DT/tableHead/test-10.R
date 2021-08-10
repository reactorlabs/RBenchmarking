library(DT)

function_to_run <- function() {
    names <- c(" ", "temperature", "pressure")
    escape <- TRUE
    DT:::tableHead(names = names, type = "head", escape = escape)
}




