library(clue)

function_to_run <- function() {
    type <- "partition"
    method <- "NMI"
    clue:::get_cl_agreement_method(name = method, type = type)
}




