library(dendextend)

function_to_run <- function() {
    dendextend:::na_locf(x = c(1, NA, NA, NA, 2, 2, NA, 3, NA, 4), recursive = FALSE)
}




