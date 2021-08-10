library(assertive.base)

function_to_run <- function() {
    x <- structure(FALSE, cause = structure("1:5 is not of class 'character'; it has class 'integer'.", class = "noquote"), 
        class = c("scalar_with_cause", "logical"))
    assertive.base:::print.scalar_with_cause(x = x)
}




