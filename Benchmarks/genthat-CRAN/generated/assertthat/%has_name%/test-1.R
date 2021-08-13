

genthat_extracted_call <- function() {
    y <- list(a = 1, b = 2)
    assertthat:::`%has_name%`(x = y, which = "c")
}




