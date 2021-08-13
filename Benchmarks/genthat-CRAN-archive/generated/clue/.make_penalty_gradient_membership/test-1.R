library(clue)

function_to_run <- function() {
    n <- 15L
    k <- 3
    clue:::.make_penalty_gradient_membership(nr = n, nc = k)
}




