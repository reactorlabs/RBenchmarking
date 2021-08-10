library(bacr)

function_to_run <- function() {
    MY <- structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 
        1, 1, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1), .Dim = c(5L, 9L))
    bacr:::find.models(MY = MY)
}




