

genthat_extracted_call <- function() {
    x <- structure(c(1, 0, 0, -0.67, 0, 0, 1, 0.7, 0, 0, 0, 0.7, 1, 0, -0.7, -0.67, 0, 0, 1, 0, 0, 0, -0.7, 0, 1), .Dim = c(5L, 
        5L))
    verbose <- TRUE
    cutoff <- 0.99
    caret:::findCorrelation_exact(x = x, cutoff = cutoff, verbose = verbose)
}




