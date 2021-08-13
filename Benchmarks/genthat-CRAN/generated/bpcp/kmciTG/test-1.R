

genthat_extracted_call <- function() {
    leuk <- structure(list(time = c(6, 6, 6, 6, 7, 9, 10, 10, 11, 13, 16, 17, 19, 20, 22, 23, 25, 32, 32, 34, 35), status = c(1, 
        1, 1, 0, 1, 0, 1, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0)), row.names = c(NA, -21L), class = "data.frame")
    bpcp:::kmciTG(time = leuk$time, status = leuk$status)
}




