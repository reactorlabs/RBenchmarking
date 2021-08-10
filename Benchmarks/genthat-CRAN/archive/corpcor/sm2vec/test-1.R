library(corpcor)

function_to_run <- function() {
    m <- structure(c(3, 1, 1, 0, 1, 3, 0, 1, 1, 0, 2, 0, 0, 1, 0, 2), .Dim = c(4L, 4L))
    corpcor:::sm2vec(m = m, diag = TRUE)
}




