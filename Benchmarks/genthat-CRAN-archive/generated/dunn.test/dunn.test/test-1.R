

genthat_extracted_call <- function() {
    x <- c(2.9, 3, 2.5, 2.6, 3.2, 3.8, 2.7, 4, 2.4, 2.8, 3.4, 3.7, 2.2, 2)
    g <- structure(c(1L, 1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L, 3L, 3L, 3L, 3L, 3L), .Label = c("Normal", "COPD", "Asbestosis"), 
        class = "factor")
    dunn.test:::dunn.test(x = x, g = g)
}




