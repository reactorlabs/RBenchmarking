library(assertive.types)

function_to_run <- function() {
    assertive.types:::is_s3_primitive_generic(x = .Primitive("exp"), .xname = "exp")
}




