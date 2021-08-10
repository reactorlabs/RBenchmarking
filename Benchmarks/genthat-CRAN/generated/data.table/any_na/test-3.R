library(data.table)

function_to_run <- function() {
    RHS <- "a"
    as_list <- data.table:::as_list
    data.table:::any_na(x = as_list(RHS))
}




