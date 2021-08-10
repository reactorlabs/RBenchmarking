library(backports)

function_to_run <- function() {
    backports:::dir.exists(paths = tempdir())
}




