

genthat_extracted_call <- function() {
    cvq2.sample.B <- structure(list(x = c(1L, 2L, 5L, 6L, 8L, 9L), y = c(1.6, 2.65, 4.33, 4.78, 7.1, 12.3)), class = "data.frame", 
        row.names = c(NA, -6L))
    cvq2:::cvq2(modelData = cvq2.sample.B, formula = y ~ x, nFold = 3, nRun = 5)
}




