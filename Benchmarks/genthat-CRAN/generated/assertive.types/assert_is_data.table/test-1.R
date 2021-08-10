library(assertive.types)

function_to_run <- function() {
    assertive.types:::assert_is_data.table(x = data.table::data.table(x = 1:5))
}




