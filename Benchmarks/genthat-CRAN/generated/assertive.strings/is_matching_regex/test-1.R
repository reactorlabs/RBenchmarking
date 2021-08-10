library(assertive.strings)

function_to_run <- function() {
    pi_digits <- c("3", ".", "1", "4", "1", "5", "9", "2", "6", "5", "3", "5", "8", "9", "7", "9", "3", "1")
    assertive.strings:::is_matching_regex(x = pi_digits, pattern = c("[13]", "[59]"))
}




