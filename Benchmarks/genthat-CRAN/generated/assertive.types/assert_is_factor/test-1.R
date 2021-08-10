library(assertive.types)

function_to_run <- function() {
    assertive.types:::assert_is_factor(x = factor(sample(letters, 10)))
}




