library(coin)

function_to_run <- function() {
    y <- c(5.7, 6.8, 7.2, 6.8, 7.3, 6.2, 10.6, 7, 7.3, 8.2, 7, 6.5, 6.7, 7, 6.5, 7.3, 8, 7.7, 8.3, 9.6, 7.1, 7.6, 6.6, 6.2, 
        7.5, 7.8, 7.1, 7.5, 7.5, 7.1, 6.6, 8.4, 6.9, 7.3, 7.7, 8.5, 6.9, 6.5, 8.3, 8.3, 9, 7.1, 8.6)
    ties.method <- c("mid-ranks", "average-scores")
    coin:::koziol_trafo(x = y, ties.method = ties.method)
}




