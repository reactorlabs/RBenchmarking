library(assertive.types)

function_to_run <- function() {
    assertive.types:::assert_all_are_classes(x = c("lm", "numeric"))
}




