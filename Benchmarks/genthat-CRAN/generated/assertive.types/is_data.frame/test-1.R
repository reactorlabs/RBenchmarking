library(assertive.types)

function_to_run <- function() {
    assertive.types:::is_data.frame(x = structure(list(), names = character(), row.names = integer(0), class = "data.frame"), 
        .xname = "data.frame()")
}




