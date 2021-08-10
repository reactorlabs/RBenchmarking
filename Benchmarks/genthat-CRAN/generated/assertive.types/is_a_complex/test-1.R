library(assertive.types)

function_to_run <- function() {
    assertive.types:::is_a_complex(x = 0 + (0+1i), .xname = "0+1i")
}




