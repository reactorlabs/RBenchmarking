library(ff)

function_to_run <- function() {
    x <- structure(list(x = structure(list(first = 3L, dat = c(3L, 4L, 7L, 8L, 11L, 12L), last = 12L), class = "rlepack"), 
        ix = NULL, re = FALSE, minindex = 1L, maxindex = 12L, length = 6L, dim = NULL, dimorder = NULL, symmetric = FALSE, 
        fixdiag = NULL, vw = NULL, NAs = NULL), class = "hi")
    ff:::print.hi(x = x)
}




