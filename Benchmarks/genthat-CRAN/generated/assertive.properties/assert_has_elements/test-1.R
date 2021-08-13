

genthat_extracted_call <- function() {
    l <- list(a = 1:5, b = list(b.a = 1:3, b.b = 1:7))
    assertive.properties:::assert_has_elements(x = l, n = 15)
}




