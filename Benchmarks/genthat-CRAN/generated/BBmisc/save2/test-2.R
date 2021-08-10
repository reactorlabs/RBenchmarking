library(BBmisc)

function_to_run <- function() {
    x <- 1
    BBmisc:::save2(file = tempfile(), y = x)
}




