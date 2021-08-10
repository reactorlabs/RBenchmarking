library(checkmate)

function_to_run <- function() {
    checkmate:::checkArray(x = array(1:27, dim = c(3, 3, 3)), d = 3)
}




