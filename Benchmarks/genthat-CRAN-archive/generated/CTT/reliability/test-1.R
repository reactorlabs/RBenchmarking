

genthat_extracted_call <- function() {
    x <- structure(list(I1 = c(0, 0, 0, 0, 0, 0, 1, 1, 0, 0), I2 = c(0, 0, 0, 0, 0, 1, 1, 0, 0, 1), I3 = c(0, 0, 0, 0, 1, 
        1, 1, 1, 0, 1), I4 = c(0, 0, 0, 1, 1, 1, 1, 1, 1, 1), I5 = c(0, 0, 1, 1, 1, 1, 1, 1, 1, 1)), class = "data.frame", 
        row.names = c("P1", "P2", "P3", "P4", "P5", "P6", "P7", "P8", "P9", "P10"))
    CTT:::reliability(items = x, itemal = TRUE)
}




