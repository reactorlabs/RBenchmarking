library(AlgDesign)

function_to_run <- function() {
    data <- structure(list(paste..X...1.4..sep...... = structure(1:4, .Label = c("X1", "X2", "X3", "X4"), class = "factor"), 
        X.1 = c(-1, -1, -1, -1), X1 = c(1, 1, 1, 1), X0 = c(0, 0, 0, 0), X2 = c(2, 2, 2, 2), X0.1 = c(0, 0, 0, 0), X0.2 = c(0, 
            0, 0, 0)), class = "data.frame", row.names = c(NA, -4L))
    AlgDesign:::optMonteCarlo(frml = ~., data = data, nTrials = 8)
}




