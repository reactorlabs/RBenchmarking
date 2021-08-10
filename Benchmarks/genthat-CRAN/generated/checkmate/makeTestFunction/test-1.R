library(checkmate)

function_to_run <- function() {
    checkFalse <- genthat::with_env(function(x) if (!identical(x, FALSE)) 
        "Must be FALSE"
    else TRUE, env = list2env(list(), parent = baseenv()))
    checkmate:::makeTestFunction(check.fun = checkFalse)
}




