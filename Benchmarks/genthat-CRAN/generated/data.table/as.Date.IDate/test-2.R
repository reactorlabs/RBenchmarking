library(data.table)

function_to_run <- function() {
    to <- structure(11537L, class = c("IDate", "Date"))
    data.table:::as.Date.IDate(x = to)
}




