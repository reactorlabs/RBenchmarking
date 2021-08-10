library(assertive.properties)

function_to_run <- function() {
    assertive.properties:::is_of_dimension(x = list(a = 1:5, b = list(b.a = 1:3, b.b = 1:7)), n = NULL, .xname = "l")
}




