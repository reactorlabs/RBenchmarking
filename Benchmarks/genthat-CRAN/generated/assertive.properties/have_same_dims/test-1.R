library(assertive.properties)

function_to_run <- function() {
    assertive.properties:::have_same_dims(x = 1:5, y = matrix(1:5))
}




