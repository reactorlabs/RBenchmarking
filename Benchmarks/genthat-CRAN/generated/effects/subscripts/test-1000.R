library(effects)

function_to_run <- function() {
    i <- 260L
    dims <- structure(c(3L, 100L), names = c("type", "income"))
    effects:::subscripts(index = i, dims = dims)
}




