library(bit)

function_to_run <- function() {
    x <- structure(4L, physical = structure(list(), vmode = "boolean", class = "physical"), virtual = structure(list(), Length = 3L, 
        class = "virtual"), class = "bit")
    bit:::print.bit(x = x)
}




