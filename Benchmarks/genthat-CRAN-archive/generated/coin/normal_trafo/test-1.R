

genthat_extracted_call <- function() {
    x <- c(7.9, 8.9, 8.1, 8.8, 6.4, 8.8, 9, 5.9, 8.9, 7.9, 8, 8, 8.6, 7.5, 8.1, 8, 7.6, 7.7, 8.2, 6.9, 8.2, 7.3, 7.4, 8.3, 
        8.7, 8.9, 8.5, 9, 8.1, 9.2, 7.4, 8, 8.5, 8.9, 6.2, 8.3, 8.3, 8.2, 7.3, 8.2, 7, 8.4, 7.4)
    ties.method <- c("mid-ranks", "average-scores")
    coin:::normal_trafo(x = x, ties.method = ties.method)
}




