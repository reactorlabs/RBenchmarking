library(bit)

function_to_run <- function() {
    x <- c(10L, 9L, 8L, 7L, 6L, 5L, 4L, 3L, 2L, 1L, 1L, 2L, 3L, 4L, 5L, 6L, 7L, 8L, 9L, 10L)
    rlepack <- bit::rlepack
    bit:::unique.rlepack(x = rlepack(x))
}




