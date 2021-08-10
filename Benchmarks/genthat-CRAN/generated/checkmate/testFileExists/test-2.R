library(checkmate)

function_to_run <- function() {
    checkmate:::testFileExists(x = file.path(R.home(), "COPYING"), access = "r")
}




