library(crul)

function_to_run <- function() {
    crul_opts <- crul:::crul_opts
    crul:::`%||%`(x = crul_opts$opts, y = list())
}




