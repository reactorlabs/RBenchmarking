

genthat_extracted_call <- function() {
    x <- 1:10
    rlepack <- bit::rlepack
    bit:::rleunpack.rlepack(x = rlepack(x))
}




