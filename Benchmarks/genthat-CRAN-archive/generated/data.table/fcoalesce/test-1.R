

genthat_extracted_call <- function() {
    z <- c(11L, NA, 1L, 14L, NA, NA)
    y <- c(NA, 12L, 5L, NA, NA, NA)
    x <- c(11L, NA, 13L, NA, 15L, NA)
    data.table:::fcoalesce(x, y, z)
}




