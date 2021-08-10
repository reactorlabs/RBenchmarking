library(clue)

function_to_run <- function() {
    type <- "partition"
    method <- "SE"
    clue:::get_cl_consensus_method(name = method, type = type)
}




