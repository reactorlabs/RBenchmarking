library(assertive.properties)

function_to_run <- function() {
    assertive.properties:::is_monotonic_decreasing(x = c(1, 2, 2, 1, 3, 2), strictly = FALSE, .xname = "x")
}




