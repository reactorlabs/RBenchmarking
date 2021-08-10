library(assertive.properties)

function_to_run <- function() {
    d <- structure(list(x = 1:5, y = structure(1:5, .Label = c("a", "b", "c", "d", "e"), class = "factor")), class = "data.frame", 
        row.names = c(NA, -5L))
    assertive.properties:::assert_is_of_dimension(x = d, n = c(5, 2))
}




