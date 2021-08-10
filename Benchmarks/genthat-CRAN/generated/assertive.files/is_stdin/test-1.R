library(assertive.files)

function_to_run <- function() {
    assertive.files:::is_stdin(x = structure(0L, class = c("terminal", "connection")), .xname = "stdin()")
}




