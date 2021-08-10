library(CerioliOutlierDetection)

function_to_run <- function() {
    p <- 10
    n <- 100
    CerioliOutlierDetection:::hr05AdjustedDF(n.obs = n, p.dim = p, method = "HR05")
}




