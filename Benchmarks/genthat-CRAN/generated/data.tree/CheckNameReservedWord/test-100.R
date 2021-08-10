library(data.tree)

function_to_run <- function() {
    name <- "Colorado"
    check <- c("check", "no-warn", "no-check")
    data.tree:::CheckNameReservedWord(name = name, check = check)
}




