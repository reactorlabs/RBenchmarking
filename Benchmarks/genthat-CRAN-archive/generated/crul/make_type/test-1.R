library(crul)

function_to_run <- function() {
    type <- NULL
    `%||%` <- crul:::`%||%`
    crul:::make_type(x = type %||% "")
}




