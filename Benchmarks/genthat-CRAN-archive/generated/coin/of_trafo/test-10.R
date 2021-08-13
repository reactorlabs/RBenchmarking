

genthat_extracted_call <- function() {
    x <- structure(c(1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L, 3L, 3L, 3L, 3L, 4L, 4L, 4L, 4L, 1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L, 3L, 
        3L, 3L, 3L, 4L, 4L, 4L, 4L), .Label = c("Very Dissatisfied", "A Little Satisfied", "Moderately Satisfied", "Very Satisfied"), 
        class = c("ordered", "factor"), scores = 1:4)
    coin:::of_trafo(x = x)
}




