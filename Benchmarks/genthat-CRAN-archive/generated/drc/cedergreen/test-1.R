

genthat_extracted_call <- function() {
    names <- c("b", "d", "e", "f")
    drc:::cedergreen(fixed = c(NA, 0, NA, NA, NA), names = c(names[1], "c", names[2:4]), alpha = 1, fctName = as.character(match.call()[[1]]), 
        fctText = "Cedergreen-Ritz-Streibig with lower limit 0 (alpha=1)")
}




