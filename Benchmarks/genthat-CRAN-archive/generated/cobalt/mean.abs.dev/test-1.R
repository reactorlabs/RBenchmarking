library(cobalt)

function_to_run <- function() {
    x <- structure(c(377L, 55L, 46L, 53L, 49L, 34L), names = c("1", "2", "3", "4", "5", "6"))
    cobalt:::mean.abs.dev(x = x)
}




