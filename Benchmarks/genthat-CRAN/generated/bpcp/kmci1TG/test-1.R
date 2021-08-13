

genthat_extracted_call <- function() {
    utime <- c(6, 7, 10, 13, 16, 22, 23)
    time <- c(6, 6, 6, 6, 7, 9, 10, 10, 11, 13, 16, 17, 19, 20, 22, 23, 25, 32, 32, 34, 35)
    status <- c(1, 1, 1, 0, 1, 0, 1, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0)
    i <- 5L
    alpha <- 0.05
    bpcp:::kmci1TG(time = time, status = status, tstar = utime[i], alpha = alpha)
}




