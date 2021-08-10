library(checkmate)

function_to_run <- function() {
    checkmate:::testPathForOutput(x = file.path(tempdir(), "process.log"))
}




