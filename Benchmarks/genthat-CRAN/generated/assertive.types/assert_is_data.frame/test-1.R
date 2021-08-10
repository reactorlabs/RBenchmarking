library(assertive.types)

function_to_run <- function() {
    assertive.types:::assert_is_data.frame(x = datasets::CO2)
}




