library(bit)

function_to_run <- function() {
    x <- 1:10
    rlepack <- bit::rlepack
    bit:::rleunpack.rlepack(x = rlepack(x))
}




