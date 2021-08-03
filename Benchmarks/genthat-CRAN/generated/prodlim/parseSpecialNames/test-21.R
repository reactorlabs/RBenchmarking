library(prodlim)

function_to_run <- function() {
    prodlim:::parseSpecialNames(x = c("log(Z,u=1,base=3)", "a", "log(B,base=8,u=3)"), special = "log", arguments = list(base = 0,
        u = 1))
}




