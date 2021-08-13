library(doParallel)

function_to_run <- function() {
    doParallel:::evalWrapper(args = base::quote(list()))
}




