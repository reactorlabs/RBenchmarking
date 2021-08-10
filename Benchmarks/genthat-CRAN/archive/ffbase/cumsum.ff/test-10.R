library(ffbase)

function_to_run <- function() {
    n <- 7
    ff <- ff::ff
    ffbase:::cumsum.ff(x = ff(1, length = n, vmode = "integer"))
}




