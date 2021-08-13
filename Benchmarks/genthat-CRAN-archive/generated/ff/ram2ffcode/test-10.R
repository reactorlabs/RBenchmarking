

genthat_extracted_call <- function() {
    vmode <- "ubyte"
    value <- structure(1:26, .Label = c("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", 
        "r", "s", "t", "u", "v", "w", "x", "y", "z"), class = "factor")
    fflev <- c("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", 
        "w", "x", "y", "z")
    ff:::ram2ffcode(value = value, levels = fflev, vmode = vmode)
}




