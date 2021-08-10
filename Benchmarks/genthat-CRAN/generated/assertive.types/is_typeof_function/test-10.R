library(assertive.types)

function_to_run <- function() {
    x <- genthat::with_env(function(x, ...) UseMethod("mean"), env = .BaseNamespaceEnv)
    .xname <- "mean"
    assertive.types:::is_typeof_function(x = x, type = "builtin", .xname = .xname)
}




