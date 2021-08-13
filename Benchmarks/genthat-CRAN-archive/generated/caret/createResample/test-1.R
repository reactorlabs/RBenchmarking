

genthat_extracted_call <- function() {
    oilType <- structure(c(1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L, 2L, 2L, 
        5L, 5L, 7L, 6L, 3L, 2L, 2L, 2L, 2L, 2L, 2L, 1L, 1L, 1L, 1L, 1L, 1L, 4L, 4L, 5L, 5L, 5L, 5L, 5L, 5L, 5L, 5L, 4L, 4L, 
        4L, 4L, 4L, 6L, 6L, 6L, 6L, 3L, 3L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 
        2L, 2L, 2L, 2L, 2L, 2L, 2L, 6L, 6L, 7L, 6L, 6L, 6L, 5L), .Label = c("A", "B", "C", "D", "E", "F", "G"), class = "factor")
    caret:::createResample(y = oilType, times = 2)
}




