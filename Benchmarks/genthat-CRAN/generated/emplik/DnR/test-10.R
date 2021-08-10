library(emplik)

function_to_run <- function() {
    y2 <- -Inf
    newdata2 <- list(value = c(0.5, 0.5, 1.5, 2.5, 2.5, 3.5, 3.5, 4.5, 5.5, 6.5, 6.5, 7.5, 8.5, 9.5, 10.5, 11.5, 12.5, 14.5, 
        15.5, 16.5, 18.5, 19.5, 20.5, 22.5, 24.5, 25.5, 26.5, 28.5), dd = c(1L, 0L, 0L, 1L, 0L, 1L, 0L, 0L, 0L, 1L, 0L, 0L, 
        0L, 0L, 0L, 0L, 0L, 0L, 1L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L), weight = c(6, 10, 4, 2, 5, 1, 5, 3, 5, 1, 1, 3, 
        3, 2, 3, 2, 4, 2, 1, 2, 1, 3, 1, 1, 1, 1, 2, 1))
    emplik:::DnR(x = newdata2$value, d = newdata2$dd, w = newdata2$weight, y = y2)
}




