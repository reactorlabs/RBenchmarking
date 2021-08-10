library(assertive.properties)

function_to_run <- function() {
    assertive.properties:::is_unsorted(x = c(1, 1, 2), na.rm = FALSE, strictly = TRUE, .xname = "c(1, 1, 2)")
}




