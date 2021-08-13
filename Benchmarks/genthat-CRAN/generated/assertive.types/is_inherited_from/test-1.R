

genthat_extracted_call <- function() {
    assertive.types:::is_inherited_from(x = structure(1:5, class = c("foo", "bar")), classes = c("foo", "baz"), .xname = "x")
}




