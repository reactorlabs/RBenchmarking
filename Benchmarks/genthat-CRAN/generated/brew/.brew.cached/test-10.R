

genthat_extracted_call <- function() {
    envir <- list2env(list(foo = "bar12345678910", i = 10L), parent = globalenv())
    brew:::.brew.cached(envir = envir)
}




