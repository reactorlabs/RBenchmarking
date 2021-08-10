library(assertive.types)

function_to_run <- function() {
    assertive.types:::is_ts(x = structure(1:10, .Tsp = c(1, 10, 1), class = "ts"), .xname = "ts(1:10)")
}




