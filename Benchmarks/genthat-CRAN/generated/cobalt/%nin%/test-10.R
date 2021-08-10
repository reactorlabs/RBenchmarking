library(cobalt)

function_to_run <- function() {
    var.name <- "race"
    factor.names <- "race"
    cobalt:::`%nin%`(x = var.name, table = factor.names)
}




