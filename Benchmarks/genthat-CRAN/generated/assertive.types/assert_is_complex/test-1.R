library(assertive.types)

function_to_run <- function() {
    assertive.types:::assert_is_complex(x = c(0 + (0+1i), 0 + (0+2i)))
}




