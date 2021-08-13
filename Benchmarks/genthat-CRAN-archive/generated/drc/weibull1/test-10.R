

genthat_extracted_call <- function() {
    names <- c("b", "c", "d", "e")
    fixed <- c(NA, NA, NA, NA)
    drc:::weibull1(fixed = fixed, names = names, fctName = as.character(match.call()[[1]]), fctText = "Weibull (type 1)")
}




