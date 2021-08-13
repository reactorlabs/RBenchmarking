library(conf.design)

function_to_run <- function() {
    d2 <- structure(list(Blocks = structure(c(1L, 1L, 1L, 2L, 2L, 2L, 3L, 3L, 3L), .Label = c("0", "1", "2"), class = "factor"), 
        D = structure(c(1L, 3L, 2L, 2L, 1L, 3L, 3L, 2L, 1L), .Label = c("0", "1", "2"), class = "factor"), E = structure(c(1L, 
            2L, 3L, 1L, 2L, 3L, 1L, 2L, 3L), .Label = c("0", "1", "2"), class = "factor")), class = "data.frame", row.names = c(NA, 
        -9L))
    d1 <- structure(list(Blocks = structure(c(1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L), .Label = c("0", "1"), class = "factor"), A = structure(c(1L, 
        2L, 2L, 1L, 2L, 1L, 1L, 2L), .Label = c("0", "1"), class = "factor"), B = structure(c(1L, 2L, 1L, 2L, 1L, 2L, 1L, 
        2L), .Label = c("0", "1"), class = "factor"), C = structure(c(1L, 1L, 2L, 2L, 1L, 1L, 2L, 2L), .Label = c("0", "1"), 
        class = "factor")), class = "data.frame", row.names = c(NA, -8L))
    conf.design:::direct.sum(D1 = subset(d1, Blocks == "0"), d2)
}




