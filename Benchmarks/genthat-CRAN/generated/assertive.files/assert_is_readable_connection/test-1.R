library(assertive.files)

function_to_run <- function() {
    assertive.files:::assert_is_readable_connection(x = stdin())
}




