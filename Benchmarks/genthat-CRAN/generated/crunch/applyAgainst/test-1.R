library(crunch)

function_to_run <- function() {
    add_one_hundred <- genthat::with_env(function(x) c(x, 100), env = list2env(list(), parent = baseenv()))
    array <- structure(1:24, .Dim = 4:2)
    crunch:::applyAgainst(X = array, MARGIN = 3, FUN = add_one_hundred)
}




