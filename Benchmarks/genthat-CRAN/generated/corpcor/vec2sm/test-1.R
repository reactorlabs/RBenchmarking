library(corpcor)

function_to_run <- function() {
    sv <- c(0, 0, 0, 1, 1, 1, 2, 2, 3, 3)
    ov <- c(4L, 6L, 9L, 2L, 3L, 7L, 8L, 10L, 1L, 5L)
    corpcor:::vec2sm(vec = sv, diag = TRUE, order = ov)
}




