library(dtplyr)

function_to_run <- function() {
    vars <- structure(c("mpg", "cyl"), names = c("x", "y"))
    dtplyr:::simplify_names(vars = vars)
}




