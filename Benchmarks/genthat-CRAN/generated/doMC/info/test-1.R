library(doMC)

function_to_run <- function() {
    .foreachGlobals <- foreach:::.foreachGlobals
    doMC:::info(data = .foreachGlobals$data, item = "name")
}




