

genthat_extracted_call <- function() {
    DF <- structure(list(x = structure(c(1L, 1L, 2L, 2L, 3L, 3L), .Label = c("x", "y", "z"), class = "factor"), y = c(1, 
        3, 6, 1, 3, 6)), class = "data.frame", row.names = c("A", "B", "C", "D", "E", "F"))
    data.table:::as.data.table.data.frame(x = DF, keep.rownames = "rownames")
}




