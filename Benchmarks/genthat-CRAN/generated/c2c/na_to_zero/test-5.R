library(c2c)

function_to_run <- function() {
    Bmat <- structure(list(a = c(1, 0, 0, 1, 0, 0, 1, 0, 0, 1), b = c(0, 1, 0, 0, 1, 0, 0, 1, 0, 0), c = c(0, 0, 1, 0, 0, 
        1, 0, 0, 1, 0)), class = "data.frame", row.names = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
    c2c:::na_to_zero(x = Bmat)
}




