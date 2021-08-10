library(assertive.files)

function_to_run <- function() {
    x <- structure(1L, class = c("terminal", "connection"))
    assertive.files:::is_connection(x = x)
}




