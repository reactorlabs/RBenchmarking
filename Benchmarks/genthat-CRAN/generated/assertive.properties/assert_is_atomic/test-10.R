library(assertive.properties)

function_to_run <- function() {
    var <- structure(NA, .Dim = c(1L, 1L))
    assertive.properties:::assert_is_atomic(x = var)
}




