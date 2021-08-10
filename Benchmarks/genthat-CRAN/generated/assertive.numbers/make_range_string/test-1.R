library(assertive.numbers)

function_to_run <- function() {
    upper <- Inf
    lower <- 1
    assertive.numbers:::make_range_string(lower = lower, upper = upper, lower_is_strict = TRUE, upper_is_strict = FALSE)
}




