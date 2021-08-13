

genthat_extracted_call <- function() {
    models <- list(label = "k-Nearest Neighbors", 
        parameters = structure(list(parameter = structure(1L, .Label = "k", class = "factor"), class = structure(1L, .Label = "numeric", 
            class = "factor"), label = structure(1L, .Label = "#Neighbors", class = "factor")), class = "data.frame", row.names = c(NA, 
            -1L)), grid = genthat::with_env(function(x, y, len = NULL, search = "grid") {
            if (search == "grid") {
                out <- data.frame(k = (5:((2 * len) + 4))[(5:((2 * len) + 4))%%2 > 0])
            } else {
                by_val <- if (is.factor(y)) length(levels(y)) else 1
                out <- data.frame(k = sample(seq(1, floor(nrow(x)/3), by = by_val), size = len, replace = TRUE))
            }
        }, env = list2env(list(), parent = baseenv())), fit = genthat::with_env(function(x, y, wts, param, lev, last, classProbs, 
            ...) {
            if (is.factor(y)) {
                knn3(as.matrix(x), y, k = param$k, ...)
            } else {
                knnreg(as.matrix(x), y, k = param$k, ...)
            }
        }, env = list2env(list(knnreg = caret::knnreg, knn3 = caret::knn3), parent = baseenv())), predict = genthat::with_env(function(modelFit, 
            newdata, submodels = NULL) {
            if (modelFit$problemType == "Classification") {
                out <- predict(modelFit, newdata, type = "class")
            } else {
                out <- predict(modelFit, newdata)
            }
            out
        }, env = list2env(list(predict = stats::predict), parent = baseenv())), predictors = genthat::with_env(function(x, 
            ...) colnames(x$learn$X), env = list2env(list(), parent = baseenv())), tags = "Prototype Models", prob = genthat::with_env(function(modelFit, 
            newdata, submodels = NULL) predict(modelFit, newdata, type = "prob"), env = list2env(list(predict = stats::predict), 
            parent = baseenv())), levels = genthat::with_env(function(x) levels(x$learn$y), env = list2env(list(), parent = baseenv())), 
        sort = genthat::with_env(function(x) x[order(-x[, 1]), ], env = list2env(list(), parent = baseenv())))
    caret:::parallel_check(pkg = "keras", models = models)
}




