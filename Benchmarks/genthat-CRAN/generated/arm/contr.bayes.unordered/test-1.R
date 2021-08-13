

genthat_extracted_call <- function() {
    x <- structure(c(3L, 2L, 4L, 2L, 3L, 3L, 4L, 1L, 3L, 3L, 3L, 3L, 4L, 2L, 5L, 5L, 1L, 2L, 3L, 2L, 3L, 3L, 2L, 4L, 1L, 
        4L, 2L, 3L, 4L, 3L, 2L, 2L, 2L, 2L, 3L, 4L, 1L, 3L, 5L, 4L, 2L, 1L, 3L, 5L, 3L, 4L, 3L, 2L, 5L, 5L, 2L, 5L, 5L, 4L, 
        3L, 3L, 2L, 1L, 3L, 2L, 4L, 5L, 2L, 5L, 2L, 4L, 3L, 3L, 5L, 2L, 3L, 4L, 1L, 2L, 1L, 1L, 2L, 2L, 2L, 2L, 3L, 5L, 4L, 
        5L, 2L, 5L, 1L, 1L, 4L, 3L, 4L, 1L, 5L, 5L, 1L, 4L, 3L, 5L, 5L, 3L), .Label = c("4", "5", "6", "7", "8"), class = "factor", 
        contrasts = "contr.bayes.unordered")
    contrasts <- TRUE
    arm:::contr.bayes.unordered(n = levels(x), contrasts = contrasts)
}




