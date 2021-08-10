library(bit64)

function_to_run <- function() {
    value <- structure(1.26480805335359e-321, class = "integer64")
    bit64:::as.integer64.integer64(x = value)
}




