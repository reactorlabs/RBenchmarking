library(assertive.files)

function_to_run <- function() {
    assertive.files:::is_library(x = c(.libPaths(), R.home()))
}




