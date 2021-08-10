library(assertive.types)

function_to_run <- function() {
    assertive.types:::assert_is_table(x = table(sample(letters, 100, replace = TRUE)))
}




