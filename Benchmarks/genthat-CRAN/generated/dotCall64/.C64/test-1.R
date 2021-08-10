library(dotCall64)

function_to_run <- function() {
    dotCall64:::.C64(.NAME = "get_c", SIGNATURE = c("double", "integer", "double"), input = 1:10, index = 9, output = double(1))
}




