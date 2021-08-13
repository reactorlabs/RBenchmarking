

genthat_extracted_call <- function() {
    data.higgins1990 <- structure(list(Row = c(1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 
        2L, 2L, 2L, 2L, 2L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L), Column = c(1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L, 3L, 
        3L, 3L, 3L, 1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L, 3L, 3L, 3L, 3L, 1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L, 3L, 3L, 3L, 3L), Response = c(11.5, 
        10.1, 9.9, 10.6, 9, 7.4, 8.8, 8.8, 3.8, 6.3, 4.9, 5.3, 9.9, 9.8, 9.3, 9.1, 9.3, 7.4, 7.7, 7.9, 4.1, 6.3, 5.5, 5.4, 
        13.9, 16, 14.2, 15.2, 13, 13.4, 11.2, 12.8, 9.6, 9.6, 11, 13.4)), class = "data.frame", row.names = c(NA, -36L))
    ART:::aligned.rank.transform(formula = Response ~ Row * Column, data = data.higgins1990)
}




