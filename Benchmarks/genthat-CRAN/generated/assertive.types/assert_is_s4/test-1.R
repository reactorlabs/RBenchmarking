library(assertive.types)

function_to_run <- function() {
    getClass <- methods::getClass
    assertive.types:::assert_is_s4(x = getClass("MethodDefinition"))
}




