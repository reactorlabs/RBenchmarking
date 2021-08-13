

genthat_extracted_call <- function() {
    data.table:::test(num = 3, x = sum("a"), error = "invalid.*character")
}




