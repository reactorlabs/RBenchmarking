library(assertive.reflection)

function_to_run <- function() {
    assertive.reflection:::is_package_current(x = c("assertive.base", "assertive.reflection", "NONEXISTENTPKG"))
}




