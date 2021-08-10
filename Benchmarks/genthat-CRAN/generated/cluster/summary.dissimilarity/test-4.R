library(cluster)

function_to_run <- function() {
    rnorm <- stats::rnorm
    daisy <- cluster::daisy
    cluster:::summary.dissimilarity(object = daisy(matrix(rnorm(100), 20, 5)))
}




