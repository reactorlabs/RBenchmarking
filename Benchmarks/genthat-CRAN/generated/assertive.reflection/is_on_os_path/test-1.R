library(assertive.reflection)

function_to_run <- function() {
    assertive.reflection:::is_on_os_path(x = c(R.home("bin"), R.home("etc"), "a nonexistent path"))
}




