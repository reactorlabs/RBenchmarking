library(assertive.strings)

function_to_run <- function() {
    assertive.strings:::assert_all_are_numeric_strings(x = c("1", "2.3", "-4.5", "6e7", "8E-9"))
}




