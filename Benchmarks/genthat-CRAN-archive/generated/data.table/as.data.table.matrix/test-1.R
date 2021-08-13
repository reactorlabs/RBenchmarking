

genthat_extracted_call <- function() {
    mm <- structure(1:4, .Dim = c(2L, 2L), .Dimnames = list(c("r1", "r2"), c("c1", "c2")))
    data.table:::as.data.table.matrix(x = mm, keep.rownames = TRUE)
}




