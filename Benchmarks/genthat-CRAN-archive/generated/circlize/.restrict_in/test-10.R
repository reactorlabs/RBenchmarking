

genthat_extracted_call <- function() {
    res_col <- structure(c(1, 1, 1, 1, 1, 0.8, 0.6, 0.4, 0.2, 0, 0.8, 0.6, 0.4, 0.2, 0), .Dim = c(5L, 3L), .Dimnames = list(NULL, 
        c("R", "G", "B")))
    circlize:::.restrict_in(x = res_col[, 1], lower = 0, upper = 1)
}




