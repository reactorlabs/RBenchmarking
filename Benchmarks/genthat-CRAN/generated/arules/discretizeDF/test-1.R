

genthat_extracted_call <- function() {
    newdata <- structure(list(Sepal.Length = c(6.1, 5.1, 5.1, 5.9, 5.7), Sepal.Width = c(3, 3.8, 3.3, 3.2, 2.8), Petal.Length = c(4.9, 
        1.6, 1.7, 4.8, 4.1), Petal.Width = c(1.8, 0.2, 0.5, 1.8, 1.3), Species = structure(c(3L, 1L, 1L, 2L, 2L), .Label = c("setosa", 
        "versicolor", "virginica"), class = "factor")), row.names = c(128L, 47L, 24L, 71L, 100L), class = "data.frame")
    cps <- list(Sepal.Length = NULL, Sepal.Width = NULL, Petal.Length = list(breaks = c(1, 2.63333333333333, 4.9, 6.9), method = "fixed", 
        labels = c("short", "medium", "long")), Petal.Width = list(breaks = c(0.1, 1.3, 2.5), method = "fixed", labels = c("narrow", 
        "wide")), Species = NULL)
    arules:::discretizeDF(df = newdata, methods = cps, default = list(method = "none"))
}




