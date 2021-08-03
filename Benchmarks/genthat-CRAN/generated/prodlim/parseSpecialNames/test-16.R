library(prodlim)

function_to_run <- function() {
    prodlim:::parseSpecialNames(x = c("log(Z,1,3)", "a", "log(B,u=3)"), special = "log", arguments = list(base = 0, u = 1))
}




