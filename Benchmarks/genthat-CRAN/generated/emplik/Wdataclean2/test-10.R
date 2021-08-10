library(emplik)

function_to_run <- function() {
    x <- c(30, 384, 4, 54, 13, 123, 97, 153, 59, 117, 16, 151, 22, 56, 21, 18, 139, 20, 31, 52, 287, 18, 51, 122, 27, 54, 
        7, 63, 392, 10)
    emplik:::Wdataclean2(z = x, d = rep(1, length(x)))
}




