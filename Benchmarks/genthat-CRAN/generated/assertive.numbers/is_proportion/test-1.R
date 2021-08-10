library(assertive.numbers)

function_to_run <- function() {
    assertive.numbers:::is_proportion(x = c(0, 0.5, 1), lower_is_strict = FALSE, upper_is_strict = FALSE, .xname = "c(0, 0.5, 1)")
}




