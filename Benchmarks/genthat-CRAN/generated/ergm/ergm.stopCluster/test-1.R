library(ergm)

function_to_run <- function() {
    verbose <- FALSE
    ergm:::ergm.stopCluster(verbose = max(verbose - 1, 0))
}




