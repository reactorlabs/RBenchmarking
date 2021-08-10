library(bit64)

function_to_run <- function() {
    a <- list(class = "integer64")
    bit64:::plusclass(class = a$class, whichclass = "integer64")
}




