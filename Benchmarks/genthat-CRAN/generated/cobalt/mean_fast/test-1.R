library(cobalt)

function_to_run <- function() {
    x <- structure(c(31L, 31L, 29L, 32L, 31L, 31L), names = c("1", "2", "3", "4", "5", "6"))
    cobalt:::mean_fast(x = x, nas.possible = TRUE)
}




