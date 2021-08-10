library(brew)

function_to_run <- function() {
    brew:::brew(file = system.file("catprint.brew", package = "brew"), envir = new.env())
}




