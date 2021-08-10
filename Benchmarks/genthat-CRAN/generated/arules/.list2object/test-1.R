library(arules)

function_to_run <- function() {
    to <- "APparameter"
    from <- list(support = 0.1, target = "frequent")
    arules:::.list2object(from = from, to = to)
}




