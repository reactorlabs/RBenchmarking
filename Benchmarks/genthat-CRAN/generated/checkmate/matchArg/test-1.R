library(checkmate)

function_to_run <- function() {
    checkmate:::matchArg(x = "k", choices = c("kendall", "pearson"))
}




