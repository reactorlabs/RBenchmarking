library(assertive.files)

function_to_run <- function() {
    assertive.files:::is_terminal_connection(x = structure(2L, class = c("terminal", "connection")), .xname = "stderr()")
}




