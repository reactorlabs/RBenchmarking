library(assertive.properties)

function_to_run <- function() {
    assertive.properties:::is_nested(x = list(a = 1, b = list(2:3)), .xname = "nested_list")
}




