library(english)

function_to_run <- function() {
    x <- structure(c("first", "second", "third", "fourth", "fifth", "sixth", "seventh", "eighth", "ninth", "tenth", "eleventh", 
        "twelfth"), class = c("ordinal", "character"))
    english:::print.ordinal(x = x)
}




