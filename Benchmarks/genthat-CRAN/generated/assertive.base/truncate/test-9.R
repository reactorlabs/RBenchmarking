library(assertive.base)

function_to_run <- function() {
    names_x <- "FALSE"
    fail_index <- 1L
    assertive.base:::truncate(x = names_x[fail_index])
}




