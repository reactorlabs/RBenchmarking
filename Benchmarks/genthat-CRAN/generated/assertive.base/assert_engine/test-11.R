library(assertive.base)

function_to_run <- function() {
    is_true <- assertive.base::is_true
    assertive.base:::assert_engine(predicate = is_true, c(TRUE, FALSE, NA), severity = "message")
}




