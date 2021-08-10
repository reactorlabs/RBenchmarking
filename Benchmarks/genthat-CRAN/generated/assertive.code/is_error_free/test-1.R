library(assertive.code)

function_to_run <- function() {
    x <- "<- 1 + sqrt(pi)"
    assertive.code:::is_error_free(x = parse(text = x))
}




