library(assertive.strings)

function_to_run <- function() {
    assertive.strings:::is_not_matching_regex(x = LETTERS, pattern = "[AEIOU]")
}




