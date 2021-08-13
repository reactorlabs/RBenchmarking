

genthat_extracted_call <- function() {
    positive <- "abnormal"
    data <- structure(c(231L, 27L, 32L, 54L), .Dim = c(2L, 2L), .Dimnames = list(Prediction = c("abnormal", "normal"), Reference = c("abnormal", 
        "normal")), class = "table")
    caret:::precision.table(data = data, relevant = positive)
}




