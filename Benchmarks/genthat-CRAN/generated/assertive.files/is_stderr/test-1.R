library(assertive.files)

function_to_run <- function() {
    assertive.files:::is_stderr(x = structure(2L, class = c("terminal", "connection")), .xname = "stderr()")
}




