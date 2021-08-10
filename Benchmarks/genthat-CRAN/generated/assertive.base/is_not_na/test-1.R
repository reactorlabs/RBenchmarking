library(assertive.base)

function_to_run <- function() {
    x <- c(TRUE, FALSE, NA)
    assertive.base:::is_not_na(x = x)
}




