library(assertive.base)

function_to_run <- function() {
    assertive.base:::is_identical_to_na(x = NaN, allow_attributes = FALSE, .xname = "NaN")
}




