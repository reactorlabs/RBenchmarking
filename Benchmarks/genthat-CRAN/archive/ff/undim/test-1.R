library(ff)

function_to_run <- function() {
    x <- structure(1:12, .Dim = 3:4)
    ff:::undim(x = x)
}




