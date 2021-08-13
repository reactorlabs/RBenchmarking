

genthat_extracted_call <- function() {
    rnorm <- stats::rnorm
    DiagrammeR:::edge_data(value = rnorm(n = 3, mean = 5, sd = 1))
}




