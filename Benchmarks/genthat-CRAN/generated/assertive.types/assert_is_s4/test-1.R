

genthat_extracted_call <- function() {
    getClass <- methods::getClass
    assertive.types:::assert_is_s4(x = getClass("MethodDefinition"))
}




