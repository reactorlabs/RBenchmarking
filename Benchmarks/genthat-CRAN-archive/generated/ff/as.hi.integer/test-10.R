library(ff)

function_to_run <- function() {
    x <- c("a", "b", "c")
    vw.convert <- TRUE
    vw <- NULL
    names <- c("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", 
        "w", "x", "y", "z")
    ff:::as.hi.integer(x = match(x, names), vw = vw, vw.convert = vw.convert)
}




