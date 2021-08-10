library(dendextend)

function_to_run <- function() {
    clusters <- c(1L, 1L, 2L, 2L, 3L, 3L)
    dendextend:::replace_unique_items_with_0_and_rank(x = clusters)
}




