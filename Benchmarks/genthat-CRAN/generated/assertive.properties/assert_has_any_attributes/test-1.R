library(assertive.properties)

function_to_run <- function() {
    x <- structure(1, names = "a", b = 2)
    assertive.properties:::assert_has_any_attributes(x = x, attrs = c("names", "not an attribute"))
}




