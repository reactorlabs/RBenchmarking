

genthat_extracted_call <- function() {
    time <- c(4, 5, 6, 7, 10, 14, 15, 16)
    cumhaz <- c(0.2, 0.21, 0.31, 0.44, 1.1, 1.1, 1.12, 1.2)
    DySeq:::NonCumHaz(x = cumhaz, t = time, plot = TRUE)
}




