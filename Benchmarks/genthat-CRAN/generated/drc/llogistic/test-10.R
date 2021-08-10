library(drc)

function_to_run <- function() {
    names <- c("c", "d", "e")
    fixed <- c(NA, NA, NA)
    drc:::llogistic(fixed = c(-1, fixed[1:3], 1), names = c("b", names[1:3], "f"), fctName = as.character(match.call()[[1]]), 
        fctText = "Shifted Michaelis-Menten")
}




