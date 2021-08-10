library(beanplot)

function_to_run <- function() {
    InsectSprays <- datasets::InsectSprays
    beanplot:::beanplot(count ~ spray, data = InsectSprays, col = "lightgray", overallline = "median", border = "grey")
}




