

genthat_extracted_call <- function() {
    rnorm <- stats::rnorm
    elliplot:::ellipseplot.list(x = list(untreated = rnorm(30, 3, 1), treated = rnorm(30, 5, 2)), y = list(untreated = rnorm(20, 
        6, 3), treated = rnorm(20, 4, 2)))
}




