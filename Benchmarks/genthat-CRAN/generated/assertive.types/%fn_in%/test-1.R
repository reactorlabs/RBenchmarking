library(assertive.types)

function_to_run <- function() {
    x <- .Primitive("is.na")
    S3_PRIMITIVE_GENERICS <- assertive.types:::S3_PRIMITIVE_GENERICS
    S3_NON_PRIMITIVE_NON_GROUP_GENERICS <- assertive.types:::S3_NON_PRIMITIVE_NON_GROUP_GENERICS
    S3_GROUP_GENERICS <- assertive.types:::S3_GROUP_GENERICS
    assertive.types:::`%fn_in%`(x = x, y = c(S3_PRIMITIVE_GENERICS, S3_GROUP_GENERICS, S3_NON_PRIMITIVE_NON_GROUP_GENERICS))
}




