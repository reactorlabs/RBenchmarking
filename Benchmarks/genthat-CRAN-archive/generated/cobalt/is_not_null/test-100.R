library(cobalt)

function_to_run <- function() {
    x <- c(1L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 1L, 0L, 0L, 0L, 1L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 1L, 0L, 0L, 
        0L, 0L, 0L, 0L, 1L, 0L, 0L, 0L, 0L, 1L, 1L, 0L, 0L, 0L, 0L, 1L, 0L, 1L, 0L, 0L, 0L, 0L, 0L, 1L, 0L, 0L, 1L, 0L, 0L, 
        1L, 1L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 1L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 
        0L, 0L, 0L, 0L, 1L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 1L, 0L, 0L, 0L, 0L, 1L, 
        0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 0L, 0L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 
        0L, 0L, 0L, 0L, 1L, 0L, 0L, 0L, 0L, 0L, 1L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 1L, 0L, 0L, 0L, 1L, 0L, 1L, 0L, 0L, 1L, 0L, 
        0L, 0L, 0L, 1L, 0L, 0L, 0L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 0L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 0L, 
        1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 0L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 
        1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 0L, 1L, 0L, 0L, 1L, 1L, 0L, 1L, 1L, 1L, 
        0L, 0L, 1L, 0L, 1L, 1L, 1L, 1L, 0L, 1L, 0L, 1L, 0L, 0L, 1L, 0L, 1L, 0L, 1L, 1L, 0L, 1L, 1L, 0L, 0L, 1L, 0L, 0L, 1L, 
        0L, 1L, 1L, 1L, 1L, 0L, 0L, 0L, 0L, 1L, 1L, 1L, 1L, 0L, 1L, 1L, 0L, 1L, 1L, 0L, 1L, 1L, 0L, 1L, 1L, 1L, 0L, 1L, 1L, 
        0L, 1L, 0L, 0L, 1L, 0L, 0L, 1L, 0L, 1L, 1L, 0L, 1L, 1L, 1L, 0L, 0L, 0L, 1L, 0L, 0L, 1L, 0L, 0L, 0L, 0L, 1L, 0L, 1L, 
        1L, 0L, 1L, 1L, 1L, 1L, 1L, 0L, 0L, 0L, 0L, 1L, 1L, 0L, 0L, 0L, 0L, 0L, 1L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 1L, 0L, 
        0L, 0L, 1L, 1L, 0L, 1L, 0L, 0L, 0L, 1L, 1L, 1L, 1L, 0L, 0L, 0L, 0L, 0L, 1L, 0L, 1L, 0L, 1L, 1L, 1L, 0L, 0L, 0L, 0L, 
        0L, 1L, 1L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 1L, 1L, 0L, 1L, 1L, 0L, 1L, 0L, 0L, 0L, 0L, 0L, 1L, 0L, 1L, 0L, 0L, 1L, 
        1L, 0L, 0L, 0L, 1L, 1L, 0L, 1L, 0L, 1L, 1L, 0L, 1L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 1L, 0L, 1L, 1L, 0L, 0L, 
        1L, 0L, 0L, 0L, 1L, 1L, 0L, 1L, 1L, 1L, 0L, 0L, 0L, 1L, 1L, 1L, 0L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 0L, 1L, 
        1L, 1L, 1L, 1L, 0L, 0L, 0L, 0L, 0L, 1L, 1L, 1L, 1L, 1L, 0L, 0L, 1L, 0L, 0L, 0L, 1L, 0L, 0L, 1L, 0L, 0L, 0L, 0L, 0L, 
        0L, 1L, 0L, 0L, 0L, 0L, 1L, 1L, 0L, 0L, 1L, 0L, 1L, 1L, 0L, 0L, 0L, 1L, 0L, 0L, 0L, 0L, 1L, 1L, 0L, 1L, 1L, 1L, 0L, 
        0L, 0L, 1L, 0L, 0L, 0L, 0L, 0L, 0L, 1L, 0L, 0L, 1L, 1L, 1L, 0L, 1L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 1L, 1L, 0L, 1L, 1L, 
        0L, 1L, 0L, 0L, 0L, 0L, 0L, 0L, 1L, 0L, 0L, 0L, 0L, 1L, 0L, 0L, 0L, 0L, 1L, 0L, 1L, 0L, 0L, 1L, 0L, 1L, 1L, 0L, 0L, 
        0L, 0L, 1L, 0L, 1L, 0L)
    cobalt:::is_not_null(x = x)
}




