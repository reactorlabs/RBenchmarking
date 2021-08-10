library(assertive.numbers)

function_to_run <- function() {
    assertive.numbers:::is_percentage(x = c(0, 50, 100), lower_is_strict = FALSE, upper_is_strict = FALSE, .xname = "c(0, 50, 100)")
}




