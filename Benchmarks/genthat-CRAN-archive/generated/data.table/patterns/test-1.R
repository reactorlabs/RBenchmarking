

genthat_extracted_call <- function() {
    pats <- list("^[xv]")
    cols <- c("x", "y", "v")
    data.table:::patterns(pats, cols = cols)
}




