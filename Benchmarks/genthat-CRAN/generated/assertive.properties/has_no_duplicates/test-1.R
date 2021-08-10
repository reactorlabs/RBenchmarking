library(assertive.properties)

function_to_run <- function() {
    x <- c(1L, 5L, 1L, 9L, 10L, 4L, 2L, 10L, 1L, 8L, 7L, 4L, 9L, 5L, 4L, 10L, 2L, 3L, 9L, 9L, 4L, 5L, 5L, 4L, 2L, 8L, 3L, 
        10L, 1L, 10L, 8L, 6L, 10L, 8L, 4L, 4L, 6L, 2L, 5L, 4L, 2L, 8L, 2L, 3L, 8L, 7L, 1L, 5L, 10L, 2L, 6L, 6L, 2L, 4L, 3L, 
        6L, 5L, 2L, 7L, 6L, 10L, 10L, 8L, 5L, 1L, 1L, 7L, 4L, 10L, 9L, 4L, 9L, 3L, 5L, 8L, 5L, 6L, 2L, 2L, 8L, 1L, 2L, 5L, 
        8L, 7L, 8L, 5L, 4L, 9L, 4L, 7L, 10L, 2L, 5L, 6L, 3L, 6L, 1L, 9L, 9L)
    assertive.properties:::has_no_duplicates(x = x)
}




