library(assertive.types)

function_to_run <- function() {
    as.relistable <- utils::as.relistable
    assertive.types:::assert_is_relistable(x = as.relistable(list(1, 2, 3)))
}




