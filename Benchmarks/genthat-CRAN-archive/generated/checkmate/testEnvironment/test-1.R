

genthat_extracted_call <- function() {
    ee <- list2env(list(a = 1), parent = emptyenv())
    checkmate:::testEnvironment(x = ee)
}




