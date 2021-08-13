

genthat_extracted_call <- function() {
    x <- as.raw(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10))
    .xname <- "as.raw(1:10)"
    assertive.types:::is_raw(x = x, .xname = .xname)
}




