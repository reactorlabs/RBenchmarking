library(assertive.code)

function_to_run <- function() {
    fn <- genthat::with_env(function(...) has_arg(z), env = list2env(list(has_arg = assertive.code::has_arg), parent = baseenv()))
    x <- "z"
    assertive.code:::has_arg_(x = x, fn = fn)
}




