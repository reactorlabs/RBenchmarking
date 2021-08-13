

genthat_extracted_call <- function() {
    nested_list <- list(a = 1, b = list(2:3))
    assertive.properties:::assert_is_nested(x = nested_list)
}




