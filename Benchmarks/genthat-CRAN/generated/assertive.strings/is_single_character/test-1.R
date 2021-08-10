library(assertive.strings)

function_to_run <- function() {
    x <- c("", "a", "aa", NA)
    assertive.strings:::is_single_character(x = x)
}




