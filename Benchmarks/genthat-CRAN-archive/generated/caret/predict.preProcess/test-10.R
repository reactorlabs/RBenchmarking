

genthat_extracted_call <- function() {
    preProc <- structure(list(dim = c(135L, 4L), bc = NULL, yj = NULL, et = NULL, invHyperbolicSine = NULL, mean = structure(c(5.84814814814815, 
        3.0637037037037, 3.76518518518519, 1.20222222222222), names = c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")), 
        std = structure(c(0.832443969864016, 0.444133805205682, 1.77550995485209, 0.766214445905602), names = c("Sepal.Length", 
            "Sepal.Width", "Petal.Length", "Petal.Width")), ranges = NULL, rotation = NULL, method = list(center = c("Sepal.Length", 
            "Sepal.Width", "Petal.Length", "Petal.Width"), scale = c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width"), 
            ignore = character(0)), thresh = 0.95, pcaComp = NULL, numComp = NULL, ica = NULL, wildcards = list(PCA = character(0), 
            ICA = character(0)), k = 5, knnSummary = genthat::with_env(function(x, ...) UseMethod("mean"), env = .BaseNamespaceEnv), 
        bagImp = NULL, median = NULL, data = NULL, rangeBounds = c(0, 1), call = "scrubed"), class = "preProcess")
    newdata <- structure(list(Sepal.Length = c(5, 5.2, 4.4, 4.8, 5, 5.6, 6.6, 6.7, 5.5, 6.1, 6, 7.2, 6, 6.7, 6.2), Sepal.Width = c(3.4, 
        3.5, 3, 3, 3.3, 2.5, 3, 3.1, 2.5, 3, 2.2, 3, 3, 3.1, 3.4), Petal.Length = c(1.6, 1.5, 1.3, 1.4, 1.4, 3.9, 4.4, 4.7, 
        4, 4.6, 5, 5.8, 4.8, 5.6, 5.4), Petal.Width = c(0.4, 0.2, 0.2, 0.3, 0.2, 1.1, 1.4, 1.5, 1.3, 1.4, 1.5, 1.6, 1.8, 
        2.4, 2.3)), row.names = c(27L, 28L, 39L, 46L, 50L, 70L, 76L, 87L, 90L, 92L, 120L, 130L, 139L, 141L, 149L), class = "data.frame")
    caret:::predict.preProcess(object = preProc, newdata = newdata)
}




