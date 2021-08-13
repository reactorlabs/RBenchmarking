library(DiagrammeR)

function_to_run <- function() {
    rnorm <- stats::rnorm
    DiagrammeR:::edge_data(value = rnorm(n = 3, mean = 5, sd = 1))
}




