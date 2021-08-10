library(distances)

function_to_run <- function() {
    weights <- c(2, 1)
    data <- structure(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 9, 8, 7, 6, 6, 7, 8, 9, 10), .Dim = c(10L, 2L))
    distances:::coerce_norm_matrix(mat = weights, num_cov = ncol(data))
}




