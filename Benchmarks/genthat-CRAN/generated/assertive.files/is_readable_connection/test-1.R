library(assertive.files)

function_to_run <- function() {
    assertive.files:::is_readable_connection(x = structure(0L, class = c("terminal", "connection")), .xname = "stdin()")
}




