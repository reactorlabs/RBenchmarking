library(assertive.types)

function_to_run <- function() {
    assertive.types:::is_environment(x = list2env(list(), parent = globalenv()), .xname = "new.env()")
}




