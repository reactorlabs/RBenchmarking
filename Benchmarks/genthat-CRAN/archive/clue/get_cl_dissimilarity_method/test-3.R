library(clue)

function_to_run <- function() {
    type <- "partition"
    method <- "GV1"
    clue:::get_cl_dissimilarity_method(name = method, type = type)
}




