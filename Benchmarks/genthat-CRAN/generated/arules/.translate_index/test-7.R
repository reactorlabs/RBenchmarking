library(arules)

function_to_run <- function() {
    x <- .ext.1
    j <- c("income=small", "income=large", "age=Young")
    arules:::.translate_index(i = j, labels = colnames(x), n = ncol(x))
}




