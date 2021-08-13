

genthat_extracted_call <- function() {
    Name <- c("Mary", "George", "Martha")
    data.table:::`%ilike%`(vector = Name, pattern = "mar")
}




