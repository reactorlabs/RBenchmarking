

genthat_extracted_call <- function() {
    dotCall64:::.C64(.NAME = "get_c", SIGNATURE = c("double", "integer", "double"), input = 1:10, index = 9, output = double(1))
}




