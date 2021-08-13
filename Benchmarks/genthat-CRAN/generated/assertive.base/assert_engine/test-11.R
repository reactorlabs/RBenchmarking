

genthat_extracted_call <- function() {
    is_true <- assertive.base::is_true
    assertive.base:::assert_engine(predicate = is_true, c(TRUE, FALSE, NA), severity = "message")
}




