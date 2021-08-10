library(caret)

function_to_run <- function() {
    piece <- structure(list(Accuracy = c(1, 0.933333333333333, 0.933333333333333, 1, 0.866666666666667, 1, 0.933333333333333, 
        1, 1, 0.933333333333333), Kappa = c(1, 0.9, 0.9, 1, 0.8, 1, 0.9, 1, 1, 0.9), k = c(7L, 7L, 7L, 7L, 7L, 7L, 7L, 7L, 
        7L, 7L)), class = "data.frame", row.names = c(NA, -10L), vars = "k")
    caret:::MeanSD(x = piece, exclude = "k")
}




