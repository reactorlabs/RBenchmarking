

genthat_extracted_call <- function() {
    cvq2.sample.A <- structure(list(x1 = c(1L, 2L, 5L, 6L), x2 = c(0.51, 0.91, 2.45, 3.12), y = c(1.6, 1.65, 4.33, 4.78)), 
        class = "data.frame", row.names = c(NA, -4L))
    cvq2:::looq2(modelData = cvq2.sample.A, formula = y ~ x1 + x2)
}




