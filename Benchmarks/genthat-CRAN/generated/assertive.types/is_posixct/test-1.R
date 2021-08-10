library(assertive.types)

function_to_run <- function() {
    assertive.types:::is_posixct(x = Sys.time())
}




