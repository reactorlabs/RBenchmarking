library(assertive.reflection)

function_to_run <- function() {
    cran <- structure("@CRAN@", names = "CRAN")
    assertive.reflection:::get_current_r(cran = cran)
}




