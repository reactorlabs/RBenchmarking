library(assertive.numbers)

function_to_run <- function() {
    assertive.numbers:::is_infinite(x = c(Inf, -Inf), .xname = "c(Inf, -Inf)")
}




