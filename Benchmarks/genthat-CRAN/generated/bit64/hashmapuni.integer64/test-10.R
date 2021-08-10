library(bit64)

function_to_run <- function() {
    x <- structure(c(1.48219693752374e-323, 1.97626258336499e-323, 1.97626258336499e-323), class = "integer64")
    nunique <- NULL
    bit64:::hashmapuni.integer64(x = x, nunique = nunique)
}




