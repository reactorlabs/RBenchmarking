library(complexplus)

function_to_run <- function() {
    lA <- structure(c(0.187497290843472 - (0+1.04306143032078i), 0.715232187317588 + (0+0.340237605630646i), 0.204875778871619 + 
        (0+1.41308588660703i), 1.61796166547865 - (0+0.36258621905949i)), .Dim = c(2L, 2L))
    complexplus:::Imzap(x = lA)
}




