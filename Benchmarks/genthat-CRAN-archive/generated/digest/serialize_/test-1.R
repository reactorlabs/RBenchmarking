library(digest)

function_to_run <- function() {
    serializeVersion <- 2L
    object <- 1:5
    ascii <- FALSE
    digest:::serialize_(object = object, connection = NULL, ascii = ascii, version = serializeVersion)
}




