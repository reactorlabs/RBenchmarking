library(data.table)

function_to_run <- function() {
    data.table:::test(num = 3, x = sum("a"), error = "invalid.*character")
}




