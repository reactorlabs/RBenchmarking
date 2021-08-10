library(assertive.properties)

function_to_run <- function() {
    assertive.properties:::is_non_empty(x = 1:10, metric = "length", .xname = "1:10")
}




