

genthat_extracted_call <- function() {
    names <- c("b", "d", "e")
    lowFixed <- drc:::lowFixed
    fixed <- c(NA, NA, NA)
    drc:::lnormal(fixed = c(fixed[1], 0, fixed[2:3]), names = c(names[1], "c", names[2:3]), fctName = as.character(match.call()[[1]]), 
        fctText = lowFixed("Log-normal"))
}




