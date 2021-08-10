library(assertive.types)

function_to_run <- function() {
    x <- NA_complex_
    .xname <- "NA_complex_"
    assertive.types:::is_complex(x = x, .xname = .xname)
}




