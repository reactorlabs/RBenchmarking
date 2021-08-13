

genthat_extracted_call <- function() {
    x <- structure(c(1, 0.86, 0.56, 0.32, 0.85, 0.86, 1, 0.01, 0.74, 0.32, 0.56, 0.01, 1, 0.65, 0.91, 0.32, 0.74, 0.65, 1, 
        0.36, 0.85, 0.32, 0.91, 0.36, 1), .Dim = c(5L, 5L), .Dimnames = list(c("x1", "x2", "x3", "x4", "x5"), c("x1", "x2", 
        "x3", "x4", "x5")))
    verbose <- FALSE
    cutoff <- 0.6
    caret:::findCorrelation_fast(x = x, cutoff = cutoff, verbose = verbose)
}




