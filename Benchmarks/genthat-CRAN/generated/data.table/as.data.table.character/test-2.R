library(data.table)

function_to_run <- function() {
    cc <- structure(c("a", "b", "c"), names = c("X", "Y", "Z"))
    data.table:::as.data.table.character(x = cc)
}




