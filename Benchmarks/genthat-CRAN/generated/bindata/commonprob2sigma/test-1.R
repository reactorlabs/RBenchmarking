library(bindata)

function_to_run <- function() {
    m <- structure(c(0.5, 0.2, 0.166666666666667, 0.2, 0.5, 0.166666666666667, 0.166666666666667, 0.166666666666667, 0.5), 
        .Dim = c(3L, 3L))
    bindata:::commonprob2sigma(commonprob = m)
}




