library(ff)

function_to_run <- function() {
    as.ffdf <- ff::as.ffdf
    ff:::length.ffdf(x = as.ffdf(data.frame(a = 1:26, b = letters)))
}




