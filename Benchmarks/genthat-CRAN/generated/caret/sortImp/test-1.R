library(caret)

function_to_run <- function() {
    x <- structure(list(importance = structure(list(setosa = c(90.7004830917874, 54.5893719806763, 100, 100), versicolor = c(59.2995169082125, 
        54.5893719806763, 100, 100), virginica = c(90.7004830917874, 0, 100, 100)), class = "data.frame", row.names = c("Sepal.Length", 
        "Sepal.Width", "Petal.Length", "Petal.Width")), model = "ROC curve", calledFrom = "varImp"), class = "varImp.train")
    top <- 4
    caret:::sortImp(object = x, top = top)
}




