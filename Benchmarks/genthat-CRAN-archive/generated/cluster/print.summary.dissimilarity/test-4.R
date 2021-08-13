library(cluster)

function_to_run <- function() {
    x <- structure(list(summ = structure(c(0.69122, 2.2516, 2.9628, 3.1112, 3.6923, 6.2207), names = c("Min.", "1st Qu.", 
        "Median", "Mean", "3rd Qu.", "Max."), class = c("summaryDefault", "table")), n = 190L, Size = 20L, Metric = "euclidean"), 
        class = "summary.dissimilarity")
    cluster:::print.summary.dissimilarity(x = x)
}




