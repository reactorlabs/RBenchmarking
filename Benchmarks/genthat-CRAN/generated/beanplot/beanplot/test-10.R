

genthat_extracted_call <- function() {
    InsectSprays <- datasets::InsectSprays
    beanplot:::beanplot(count ~ spray, data = InsectSprays, col = "lightgray", overallline = "median", border = "grey")
}




