library(assertive.properties)

function_to_run <- function() {
    assertive.properties:::assert_has_rows(x = data.frame(x = 1:10))
}




