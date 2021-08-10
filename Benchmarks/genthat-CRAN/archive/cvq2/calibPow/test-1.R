library(cvq2)

function_to_run <- function() {
    cvq2.sample.C <- structure(list(observed = c(7.7, 9.46, 13.5, 13.76), predicted = c(7.78, 9.34, 12.98, 13.53)), class = "data.frame", 
        row.names = c(NA, -4L))
    cvq2:::calibPow(data = cvq2.sample.C)
}




