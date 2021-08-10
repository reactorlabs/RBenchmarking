library(assertive.properties)

function_to_run <- function() {
    assertive.properties:::has_attributes(x = structure(1, names = "a", b = 2), attrs = c("names", "b"))
}




