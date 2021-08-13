

genthat_extracted_call <- function() {
    predict.svm <- genthat::with_env(function(model, newData) {
        stopifnot(isClassification(newData))
        return(predict(model, newData$x))
    }, env = list2env(list(predict = stats::predict, isClassification = CVST::isClassification), parent = baseenv()))
    learn.svm <- genthat::with_env(function(data, params) {
        stopifnot(isClassification(data))
        kpar <- params[setdiff(names(params), c("kernel", "nu"))]
        return(ksvm(data$x, data$y, kernel = params$kernel, kpar = kpar, type = "nu-svc", nu = params$nu, scale = FALSE))
    }, env = list2env(list(ksvm = kernlab::ksvm, isClassification = CVST::isClassification), parent = baseenv()))
    CVST:::constructLearner(learn = learn.svm, predict = predict.svm)
}




