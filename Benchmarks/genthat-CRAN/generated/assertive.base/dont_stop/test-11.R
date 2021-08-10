library(assertive.base)

function_to_run <- function() {
    use_first <- assertive.base::use_first
    assertive.base:::dont_stop(expr = use_first(1:5))
}




