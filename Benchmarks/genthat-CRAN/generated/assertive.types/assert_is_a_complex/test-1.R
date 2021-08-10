library(assertive.types)

function_to_run <- function() {
    assertive.types:::assert_is_a_complex(x = 1 + 0 + (0+0i))
}




