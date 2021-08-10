library(ff)

function_to_run <- function() {
    i2 <- structure(list(x = structure(list(first = 1L, dat = structure(list(lengths = 25L, values = 1L), class = "rle"), 
        last = 26L), class = "rlepack"), ix = NULL, re = FALSE, minindex = 1L, maxindex = NA_integer_, length = 26L, dim = NULL, 
        dimorder = NULL, symmetric = FALSE, fixdiag = NULL, vw = NULL, NAs = NULL), class = "hi")
    ff:::as.which.hi(x = i2)
}




