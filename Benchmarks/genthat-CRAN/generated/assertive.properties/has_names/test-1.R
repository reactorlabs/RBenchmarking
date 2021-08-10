library(assertive.properties)

function_to_run <- function() {
    assertive.properties:::has_names(x = structure(c(1, 2), names = c("a", "")), .xname = "c(a = 1, 2)")
}




