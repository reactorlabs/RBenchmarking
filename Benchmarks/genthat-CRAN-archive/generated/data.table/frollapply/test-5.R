

genthat_extracted_call <- function() {
    x <- c(1, 2, 1, 1, NA, 2, NA, 2)
    data.table:::frollapply(x = x, n = 3, FUN = anyNA)
}




