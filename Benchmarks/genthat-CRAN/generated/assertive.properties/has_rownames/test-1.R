library(assertive.properties)

function_to_run <- function() {
    assertive.properties:::has_rownames(x = structure(list(x = 1:5), class = "data.frame", row.names = c(NA, -5L)), .xname = "dfr")
}




