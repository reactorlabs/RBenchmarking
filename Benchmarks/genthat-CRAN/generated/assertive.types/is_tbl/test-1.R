library(assertive.types)

function_to_run <- function() {
    assertive.types:::is_tbl(x = structure(list(x = 1:5), class = "data.frame", row.names = c(NA, -5L)), .xname = "data.frame(x = 1:5)")
}




