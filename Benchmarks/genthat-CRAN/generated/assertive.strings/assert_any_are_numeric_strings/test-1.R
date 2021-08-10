library(assertive.strings)

function_to_run <- function() {
    assertive.strings:::assert_any_are_numeric_strings(x = c("1", "Not a number"))
}




