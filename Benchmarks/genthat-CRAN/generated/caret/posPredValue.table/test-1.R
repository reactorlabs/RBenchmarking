library(caret)

function_to_run <- function() {
    prevalence <- 0.75
    positive <- "abnormal"
    data <- structure(c(231L, 27L, 32L, 54L), .Dim = c(2L, 2L), .Dimnames = list(pred = c("abnormal", "normal"), truth = c("abnormal", 
        "normal")), class = "table")
    caret:::posPredValue.table(data = data, positive = positive, prevalence = prevalence)
}




