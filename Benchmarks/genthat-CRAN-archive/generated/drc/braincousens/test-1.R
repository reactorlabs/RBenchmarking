

genthat_extracted_call <- function() {
    names <- c("b", "d", "e", "f")
    fixed <- c(NA, NA, NA, NA)
    drc:::braincousens(fixed = c(fixed[1], 0, fixed[2:4]), names = c(names[1], "c", names[2:4]), fctName = as.character(match.call()[[1]]), 
        fctText = "Brain-Cousens (hormesis) with lower limit fixed at 0")
}




