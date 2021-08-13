

genthat_extracted_call <- function() {
    x <- structure(list(x = c("b", "a", "c"), V1 = c(6L, 15L, 24L)), row.names = c(NA, -3L), class = c("data.table", "data.frame"), 
        .internal.selfref = .ext.1)
    verbose <- FALSE
    notjoin <- FALSE
    isub <- order(x)
    data.table:::.prepareFastSubset(isub = isub, x = x, enclos = parent.frame(), notjoin = notjoin, verbose = verbose)
}




