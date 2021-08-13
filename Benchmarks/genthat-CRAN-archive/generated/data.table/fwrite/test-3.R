

genthat_extracted_call <- function() {
    DF <- structure(list(A = 1:3, B = structure(c(3L, 1L, 2L), .Label = c("A,Name", "baz", "foo"), class = "factor")), class = "data.frame", 
        row.names = c(NA, -3L))
    data.table:::fwrite(x = DF)
}




