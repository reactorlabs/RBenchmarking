library(distr)

function_to_run <- function() {
    discretePart <- .ext.1
    acPart <- .ext.2
    distr:::.mergegaps(gaps = acPart@gaps, support = discretePart@support)
}




