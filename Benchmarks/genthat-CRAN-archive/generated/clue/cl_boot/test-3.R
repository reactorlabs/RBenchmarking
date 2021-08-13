library(clue)

function_to_run <- function() {
    USArrests <- datasets::USArrests
    clue:::cl_boot(x = USArrests, B = 30, k = 3)
}




