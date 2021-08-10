library(assertive.base)

function_to_run <- function() {
    x <- structure(NA, class = "nanana")
    assertive.base:::strip_attributes(x = x)
}




