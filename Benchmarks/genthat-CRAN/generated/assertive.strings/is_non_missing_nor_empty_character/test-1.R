library(assertive.strings)

function_to_run <- function() {
    x <- c("", "a", NA)
    assertive.strings:::is_non_missing_nor_empty_character(x = x)
}




