library(assertive.strings)

function_to_run <- function() {
    assertive.strings:::is_numeric_string(x = c("1", "1.1", "-1.1e1", "one", NA))
}




