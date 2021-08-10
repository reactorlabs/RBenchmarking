library(crayon)

function_to_run <- function() {
    str <- "red default green"
    crayon:::col_substr(x = str, start = 1, stop = 5)
}




