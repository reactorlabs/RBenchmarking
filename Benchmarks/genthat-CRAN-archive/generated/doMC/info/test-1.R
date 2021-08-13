

genthat_extracted_call <- function() {
    .foreachGlobals <- foreach:::.foreachGlobals
    doMC:::info(data = .foreachGlobals$data, item = "name")
}




