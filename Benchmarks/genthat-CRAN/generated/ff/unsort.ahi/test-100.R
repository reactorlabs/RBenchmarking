library(ff)

function_to_run <- function() {
    ret <- structure(633:640, .Dim = c(8L, 1L, 1L))
    ixre <- FALSE
    index <- list(structure(list(x = structure(list(first = 1L, dat = structure(list(lengths = 7L, values = 1L), class = "rle"), 
        last = 8L), class = "rlepack"), ix = NULL, re = FALSE, minindex = 1L, maxindex = 8L, length = 8L, dim = NULL, dimorder = NULL, 
        symmetric = FALSE, fixdiag = NULL, vw = NULL, NAs = NULL), class = "hi"), structure(list(x = structure(list(first = 8L, 
        dat = 8L, last = 8L), class = "rlepack"), ix = NULL, re = FALSE, minindex = 1L, maxindex = 9L, length = 1L, dim = NULL, 
        dimorder = NULL, symmetric = FALSE, fixdiag = NULL, vw = NULL, NAs = NULL), class = "hi"), structure(list(x = structure(list(first = 9L, 
        dat = 9L, last = 9L), class = "rlepack"), ix = NULL, re = FALSE, minindex = 1L, maxindex = 10L, length = 1L, dim = NULL, 
        dimorder = NULL, symmetric = FALSE, fixdiag = NULL, vw = NULL, NAs = NULL), class = "hi"))
    ff:::unsort.ahi(x = ret, index = index, ixre = ixre)
}




