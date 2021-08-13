

genthat_extracted_call <- function() {
    x <- list(a = 1:5, b = list(b.a = 1:3, b.b = 1:7))
    assertive.properties:::has_dims(x = x)
}




