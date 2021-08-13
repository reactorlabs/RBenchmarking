library(caret)

function_to_run <- function() {
    testData2 <- structure(c(1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 
        0, 1, 0, 0, 1), .Dim = c(6L, 6L))
    caret:::findLinearCombos(x = testData2)
}




