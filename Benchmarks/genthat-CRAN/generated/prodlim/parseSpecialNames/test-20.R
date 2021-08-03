library(prodlim)

function_to_run <- function() {
    prodlim:::parseSpecialNames(x = c("treat(Z,1,u=2)", "treat(B,u=2)"), special = "treat", arguments = list(u = NA, k = NULL))
}




