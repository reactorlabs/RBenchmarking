library(drc)

function_to_run <- function() {
    names <- c("b", "c", "d", "e")
    fixed <- c(NA, NA, NA, NA)
    drc:::NEC(fixed = fixed, names = names, fctName = as.character(match.call()[[1]]))
}




