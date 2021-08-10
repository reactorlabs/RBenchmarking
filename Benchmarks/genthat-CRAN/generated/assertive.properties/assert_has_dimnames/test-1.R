library(assertive.properties)

function_to_run <- function() {
    dfr <- structure(list(x = 1:5), class = "data.frame", row.names = c(NA, -5L))
    assertive.properties:::assert_has_dimnames(x = dfr)
}




