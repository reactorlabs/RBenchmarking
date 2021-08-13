library(drc)

function_to_run <- function() {
    names <- c("c", "d", "e")
    fixed <- c(NA, NA, NA)
    drc:::weibull2(fixed = c(1, fixed[1:3]), names = c("b", names[1:3]), fctName = as.character(match.call()[[1]]), fctText = "Shifted asymptotic regression")
}




