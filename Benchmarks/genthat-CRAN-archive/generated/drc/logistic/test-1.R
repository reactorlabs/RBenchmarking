library(drc)

function_to_run <- function() {
    names <- c("b", "c", "d", "e")
    fixed <- c(NA, NA, NA, NA)
    drc:::logistic(fixed = c(fixed, 1), names = c(names, "f"), fctName = as.character(match.call()[[1]]), fctText = "Logistic (ED50 as parameter)")
}




