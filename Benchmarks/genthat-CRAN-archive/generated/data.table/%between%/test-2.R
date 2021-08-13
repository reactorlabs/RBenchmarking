

genthat_extracted_call <- function() {
    c <- 5:1
    b <- 6:10
    data.table:::`%between%`(x = b, y = c(7, 9))
}




