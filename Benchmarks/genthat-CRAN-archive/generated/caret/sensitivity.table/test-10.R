

genthat_extracted_call <- function() {
    positive <- "pos"
    data <- structure(c(18L, 32L, 32L, 68L), .Dim = c(2L, 2L), .Dimnames = list(c("pos", "neg"), c("pos", "neg")), class = "table")
    caret:::sensitivity.table(data = data, positive = positive)
}




