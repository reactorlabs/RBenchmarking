library(caret)

function_to_run <- function() {
    two_levels <- structure(c(1L, 1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L, 2L), .Label = c("a", "b"), class = "factor")
    caret:::class2ind(x = two_levels)
}




