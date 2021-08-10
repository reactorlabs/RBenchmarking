library(bit)

function_to_run <- function() {
    x <- structure(4L, physical = structure(list(), vmode = "boolean", class = "physical"), virtual = structure(list(), Length = 3L, 
        class = "virtual"), class = "bit")
    as.bitwhich <- bit::as.bitwhich
    bit:::`[.bit`(x = x, i = as.bitwhich(c(TRUE, TRUE, FALSE)))
}




