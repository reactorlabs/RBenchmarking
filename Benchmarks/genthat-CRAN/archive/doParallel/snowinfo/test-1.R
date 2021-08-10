library(doParallel)

function_to_run <- function() {
    .foreachGlobals <- foreach:::.foreachGlobals
    doParallel:::snowinfo(data = .foreachGlobals$data, item = "workers")
}




