library(DT)

function_to_run <- function() {
    rownames <- TRUE
    names <- c(" ", "temperature", "pressure")
    name <- "pressure"
    DT:::name2int(name = name, names = names, rownames = rownames)
}




