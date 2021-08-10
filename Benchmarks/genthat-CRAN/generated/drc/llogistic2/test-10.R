library(drc)

function_to_run <- function() {
    upper <- 1
    upFixed <- drc:::upFixed
    names <- c("b", "c", "e")
    fixed <- c(NA, NA, NA)
    drc:::llogistic2(fixed = c(fixed[1:2], upper, fixed[3], 1), names = c(names[1:2], "d", names[3], "f"), fctName = as.character(match.call()[[1]]), 
        fctText = upFixed("Log-logistic (log(ED50) as parameter)", upper))
}




