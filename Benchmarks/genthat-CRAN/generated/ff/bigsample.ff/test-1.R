library(ff)

function_to_run <- function() {
    ff <- ff::ff
    ff:::bigsample.ff(x = ff(1:100/10), size = 10)
}




