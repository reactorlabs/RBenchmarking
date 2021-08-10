library(assertive.properties)

function_to_run <- function() {
    var <- stats::var
    assertive.properties:::assert_is_of_length(x = var, n = 1)
}




