library(assertive.types)

function_to_run <- function() {
    ts <- stats::ts
    assertive.types:::assert_is_ts(x = ts(1:10))
}




