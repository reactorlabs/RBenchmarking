library(checkmate)

function_to_run <- function() {
    checkmate:::testChoice(x = "x", choices = letters)
}




