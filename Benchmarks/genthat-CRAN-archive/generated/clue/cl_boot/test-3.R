

genthat_extracted_call <- function() {
    USArrests <- datasets::USArrests
    clue:::cl_boot(x = USArrests, B = 30, k = 3)
}




