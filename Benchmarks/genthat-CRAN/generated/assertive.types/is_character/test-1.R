library(assertive.types)

function_to_run <- function() {
    assertive.types:::is_character(x = c("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", 
        "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"), .xname = "letters")
}




