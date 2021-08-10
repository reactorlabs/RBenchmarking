library(assertive.types)

function_to_run <- function() {
    assertive.types:::is_language(x = genthat::with_env(function() {
    }, env = list2env(list(), parent = baseenv())), .xname = "function() {}")
}




