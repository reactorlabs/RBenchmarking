library(assertive.properties)

function_to_run <- function() {
    assertive.properties:::has_rows(x = structure(list(x = 1:10), class = "data.frame", row.names = c(NA, -10L)), .xname = "data.frame(x = 1:10)")
}




