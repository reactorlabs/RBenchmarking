library(assertive.properties)

function_to_run <- function() {
    x <- list(a = 1:5, b = list(b.a = 1:3, b.b = 1:7))
    assertive.properties:::has_dims(x = x)
}




