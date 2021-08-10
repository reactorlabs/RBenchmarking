library(crayon)

function_to_run <- function() {
    str <- "red default green"
    crayon:::col_substring(text = str, first = 3, last = 7)
}




