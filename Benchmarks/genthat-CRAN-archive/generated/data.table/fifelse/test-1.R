

genthat_extracted_call <- function() {
    data.table:::fifelse(test = c(-5L:5L < 0L, NA), yes = 1L, no = 0L, na = 2L)
}




