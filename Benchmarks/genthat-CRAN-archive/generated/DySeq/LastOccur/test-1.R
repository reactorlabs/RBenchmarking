library(DySeq)

function_to_run <- function() {
    my.data <- structure(c(1, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 0, 0, 1), .Dim = c(4L, 4L))
    DySeq:::LastOccur(x = my.data, y = 1)
}




