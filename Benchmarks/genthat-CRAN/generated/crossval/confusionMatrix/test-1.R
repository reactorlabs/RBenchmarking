library(crossval)

function_to_run <- function() {
    p <- c("cancer", "control", "control", "control", "cancer", "control", "cancer")
    a <- c("cancer", "cancer", "control", "control", "cancer", "control", "control")
    crossval:::confusionMatrix(actual = a, predicted = p, negative = "control")
}




