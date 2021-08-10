library(checkmate)

function_to_run <- function() {
    checkmate:::testDirectory(x = R.home(), access = "r")
}




