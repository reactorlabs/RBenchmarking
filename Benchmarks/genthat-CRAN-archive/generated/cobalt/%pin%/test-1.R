library(cobalt)

function_to_run <- function() {
    stats <- "mean.diffs"
    cobalt:::`%pin%`(x = stats, table = "variance.ratios")
}




