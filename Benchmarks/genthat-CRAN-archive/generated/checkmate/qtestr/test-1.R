library(checkmate)

function_to_run <- function() {
    checkmate:::qtestr(x = as.list(1:10), rules = "i+")
}




