

genthat_extracted_call <- function() {
    Name <- c("Mary", "George", "Martha")
    data.table:::`%like%`(vector = Name, pattern = "^Mar")
}




