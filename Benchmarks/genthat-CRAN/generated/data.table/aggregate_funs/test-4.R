library(data.table)

function_to_run <- function() {
    sep <- "_"
    lvals <- list("d1")
    fun.call <- list(sum, mean)
    data.table:::aggregate_funs(funs = fun.call, vals = lvals, sep = sep)
}




