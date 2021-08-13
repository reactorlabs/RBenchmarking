

genthat_extracted_call <- function() {
    dta <- structure(list(y = c(1.83, 0.5, 1.62, 2.48, 1.68, 1.88, 1.55, 3.06, 1.3, 0.878, 0.647, 0.598, 2.05, 1.06, 1.29, 
        1.06, 3.14, 1.29), x = structure(c(1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L), .Label = c("1", 
        "2"), class = "factor"), block = structure(c(1L, 2L, 3L, 4L, 5L, 6L, 7L, 8L, 9L, 1L, 2L, 3L, 4L, 5L, 6L, 7L, 8L, 
        9L), .Label = c("1", "2", "3", "4", "5", "6", "7", "8", "9"), class = "factor")), class = "data.frame", row.names = c(NA, 
        -18L))
    coin:::friedman_test.formula(formula = y ~ x | block, data = dta, distribution = "exact")
}




