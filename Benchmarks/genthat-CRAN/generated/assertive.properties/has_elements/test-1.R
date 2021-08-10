library(assertive.properties)

function_to_run <- function() {
    x <- list(1:5)
    .xname <- "list(1:5)"
    assertive.properties:::has_elements(x = x, n = 1L, .xname = .xname)
}




