

genthat_extracted_call <- function() {
    y2 <- c(2, 3, 7, 1, 4, 3)
    y1 <- c(4, 2, 3, 1, 10, 4)
    entropy:::chi2.Dirichlet(y1 = y1, y2 = y2, a1 = 1/6, a2 = 1/6)
}




