

genthat_extracted_call <- function() {
    crul_opts <- crul:::crul_opts
    crul:::`%||%`(x = crul_opts$opts, y = list())
}




