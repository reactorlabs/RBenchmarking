library(assertive.types)

function_to_run <- function() {
    rnorm <- stats::rnorm
    assertive.types:::assert_is_qr(x = qr(matrix(rnorm(25), nrow = 5)))
}




