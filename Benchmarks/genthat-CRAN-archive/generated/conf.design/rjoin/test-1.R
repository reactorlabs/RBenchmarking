

genthat_extracted_call <- function() {
    d2 <- structure(list(Blocks = structure(c(1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L), .Label = c("0", "1"), class = "factor"), A = structure(c(1L, 
        2L, 1L, 2L, 1L, 2L, 1L, 2L), .Label = c("0", "1"), class = "factor"), B = structure(c(1L, 1L, 2L, 2L, 2L, 2L, 1L, 
        1L), .Label = c("0", "1"), class = "factor"), C = structure(c(1L, 1L, 2L, 2L, 1L, 1L, 2L, 2L), .Label = c("0", "1"), 
        class = "factor")), class = "data.frame", row.names = c(NA, -8L))
    d1 <- structure(list(Blocks = structure(c(1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L), .Label = c("0", "1"), class = "factor"), A = structure(c(1L, 
        2L, 2L, 1L, 2L, 1L, 1L, 2L), .Label = c("0", "1"), class = "factor"), B = structure(c(1L, 2L, 1L, 2L, 1L, 2L, 1L, 
        2L), .Label = c("0", "1"), class = "factor"), C = structure(c(1L, 1L, 2L, 2L, 1L, 1L, 2L, 2L), .Label = c("0", "1"), 
        class = "factor")), class = "data.frame", row.names = c(NA, -8L))
    conf.design:::rjoin(d1, d2)
}




