

genthat_extracted_call <- function() {
    e <- list2env(list(x = 1, y = 2), parent = globalenv())
    assertive.code:::assert_all_are_existing(x = c("x", "y"), envir = e)
}




