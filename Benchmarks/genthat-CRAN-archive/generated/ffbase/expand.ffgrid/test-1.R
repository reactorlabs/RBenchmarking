library(ffbase)

function_to_run <- function() {
    ff <- ff::ff
    ffbase:::expand.ffgrid(list(a = ff(1:10), b = ff(1:10)))
}




