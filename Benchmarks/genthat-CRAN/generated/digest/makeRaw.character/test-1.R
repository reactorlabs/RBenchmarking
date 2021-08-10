library(digest)

function_to_run <- function() {
    object <- "Hi There"
    digest:::makeRaw.character(object = object)
}




