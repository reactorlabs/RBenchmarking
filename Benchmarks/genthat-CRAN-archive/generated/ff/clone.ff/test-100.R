

genthat_extracted_call <- function() {
    x <- structure(c(13L, 12L, 11L, 10L, 9L, 8L, 7L, 6L, 5L, 4L, 3L, 2L, 1L, 13L, 12L, 11L, 10L, 9L, 8L, 7L, 6L, 5L, 4L, 
        3L, 2L, 1L), .Label = c("1910-01-01", "1910-01-02", "1910-01-03", "1910-01-04", "1910-01-05", "1910-01-06", "1910-01-07", 
        "1910-01-08", "1910-01-09", "1910-01-10", "1910-01-11", "1910-01-12", "1910-01-13"), class = "factor")
    overwrite <- FALSE
    filename <- NULL
    ff:::clone.ff(x = x, vmode = NULL, pattern = "ffdf", filename = filename, overwrite = overwrite, FF_RETURN = TRUE)
}




