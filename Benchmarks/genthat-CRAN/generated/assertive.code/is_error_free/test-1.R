

genthat_extracted_call <- function() {
    x <- "<- 1 + sqrt(pi)"
    assertive.code:::is_error_free(x = parse(text = x))
}




