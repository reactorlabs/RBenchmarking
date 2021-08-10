library(assertive.types)

function_to_run <- function() {
    assertive.types:::is_inherited_from(x = structure(1:5, class = c("foo", "bar")), classes = c("foo", "baz"), .xname = "x")
}




