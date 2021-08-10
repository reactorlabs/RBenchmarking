library(assertive.strings)

function_to_run <- function() {
    x <- c("", "a", NA)
    assertive.strings:::is_missing_or_empty_character(x = x)
}




