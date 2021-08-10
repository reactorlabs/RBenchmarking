library(BASIX)

function_to_run <- function() {
    vec <- c(2, 3, 4, 10, 11)
    elements <- c(1, 2, 10)
    BASIX:::BASIX.match(elements = elements, vec = vec)
}




