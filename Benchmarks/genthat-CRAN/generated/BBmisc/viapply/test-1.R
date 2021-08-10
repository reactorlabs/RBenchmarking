library(BBmisc)

function_to_run <- function() {
    tmp <- list("a", "b")
    BBmisc:::viapply(x = tmp, fun = length)
}




