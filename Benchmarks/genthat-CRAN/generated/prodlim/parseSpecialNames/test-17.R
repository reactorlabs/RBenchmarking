library(prodlim)

function_to_run <- function() {
    prodlim:::parseSpecialNames(x = c("log(Z,3)", "a", "log(B,1)"), special = "log", arguments = list(base = 0))
}




