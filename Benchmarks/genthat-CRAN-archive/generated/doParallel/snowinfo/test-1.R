

genthat_extracted_call <- function() {
    .foreachGlobals <- foreach:::.foreachGlobals
    doParallel:::snowinfo(data = .foreachGlobals$data, item = "workers")
}




