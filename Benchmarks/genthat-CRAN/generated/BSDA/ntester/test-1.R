library(BSDA)

function_to_run <- function() {
    rexp <- stats::rexp
    BSDA:::ntester(actual.data = rexp(50, 1))
}




