library(assertive.strings)

function_to_run <- function() {
    x <- c("TRUE", "FALSE", "true", "false", "True", "False", "trUE", "FaLsE", "T", "F", "t", "f")
    assertive.strings:::is_logical_string(x = x)
}




