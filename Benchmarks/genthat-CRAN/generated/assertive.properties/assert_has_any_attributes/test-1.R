

genthat_extracted_call <- function() {
    x <- structure(1, names = "a", b = 2)
    assertive.properties:::assert_has_any_attributes(x = x, attrs = c("names", "not an attribute"))
}




