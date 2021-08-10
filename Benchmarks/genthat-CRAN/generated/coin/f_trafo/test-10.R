library(coin)

function_to_run <- function() {
    x <- structure(c(1L, 1L, 2L, 2L, 3L, 3L, 4L, 4L), .Label = c("Larger", "< 2/3 healed", ">= 2/3 healed", "Healed"), class = "factor")
    coin:::f_trafo(x = x)
}




