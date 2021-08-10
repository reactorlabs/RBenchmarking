library(assertive.files)

function_to_run <- function() {
    assertive.files:::is_stdout(x = structure(1L, class = c("terminal", "connection")), .xname = "stdout()")
}




