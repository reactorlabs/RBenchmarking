

genthat_extracted_call <- function() {
    X <- c("x", "y")
    i <- 1L
    assertive.code:::is_existing(x = X[[i]], envir = list2env(list(x = 1, y = 2), parent = globalenv()), inherits = TRUE)
}




