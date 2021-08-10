library(assertive.types)

function_to_run <- function() {
    assertive.types:::is_s4_group_generic(x = .Primitive("!"), .xname = "!")
}




