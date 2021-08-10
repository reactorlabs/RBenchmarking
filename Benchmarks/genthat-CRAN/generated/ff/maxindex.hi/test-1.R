library(ff)

function_to_run <- function() {
    x <- structure(list(x = structure(list(first = -3L, dat = -3:-1, last = -1L), class = "rlepack"), ix = NULL, re = FALSE, 
        minindex = 1L, maxindex = 12L, length = 3L, dim = NULL, dimorder = NULL, symmetric = FALSE, fixdiag = NULL, vw = NULL, 
        NAs = NULL), class = "hi")
    ff:::maxindex.hi(x = x)
}




