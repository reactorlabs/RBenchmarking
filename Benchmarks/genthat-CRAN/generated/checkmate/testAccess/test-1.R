library(checkmate)

function_to_run <- function() {
    checkmate:::testAccess(x = R.home(), access = "w")
}




