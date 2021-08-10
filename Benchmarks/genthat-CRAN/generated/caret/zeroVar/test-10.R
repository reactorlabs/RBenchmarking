library(caret)

function_to_run <- function() {
    piece <- structure(list(x1 = c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 0, 1, 0, 1, 0, 1, 1, 0, 1), x2 = c(0, 0, 0, 0, 0, 0, 
        0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), x3 = c(0, 1, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1), .outcome = structure(c(1L, 
        1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L), .Label = c("a", "b", "c"), class = "factor")), 
        class = "data.frame", row.names = c(NA, -20L), vars = ".outcome")
    caret:::zeroVar(x = piece)
}




