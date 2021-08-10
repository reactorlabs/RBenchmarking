library(assertive.types)

function_to_run <- function() {
    x <- structure(1:5, class = c("foo", "bar"))
    assertive.types:::assert_is_inherited_from(x = x, classes = c("foo", "baz"))
}




