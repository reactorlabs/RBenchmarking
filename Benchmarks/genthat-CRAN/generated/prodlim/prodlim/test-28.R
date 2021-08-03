library(prodlim)

function_to_run <- function() {
    CompRiskFrame <- structure(list(time = 1:100, event = c(0L, 0L, 0L, 1L, 2L, 0L, 2L, 1L, 0L, 2L, 1L, 0L, 2L, 0L, 1L, 1L,
        1L, 0L, 1L, 1L, 1L, 2L, 2L, 2L, 0L, 1L, 1L, 0L, 2L, 1L, 1L, 2L, 0L, 2L, 1L, 1L, 0L, 0L, 1L, 1L, 0L, 1L, 2L, 1L, 0L,
        1L, 2L, 1L, 0L, 1L, 1L, 2L, 0L, 1L, 0L, 0L, 0L, 2L, 1L, 2L, 2L, 2L, 0L, 0L, 0L, 1L, 1L, 1L, 1L, 1L, 2L, 1L, 0L, 2L,
        0L, 0L, 1L, 0L, 0L, 1L, 1L, 0L, 2L, 1L, 1L, 0L, 1L, 2L, 2L, 1L, 1L, 1L, 2L, 1L, 2L, 2L, 1L, 1L, 1L, 0L), X = c(0L,
        0L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 0L, 1L, 0L, 1L, 1L, 0L, 1L, 1L, 0L, 0L, 0L, 0L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 0L, 1L,
        0L, 0L, 0L, 0L, 0L, 1L, 1L, 0L, 1L, 1L, 1L, 0L, 0L, 1L, 1L, 1L, 1L, 0L, 0L, 1L, 1L, 0L, 1L, 1L, 1L, 1L, 0L, 0L, 0L,
        0L, 0L, 1L, 1L, 0L, 1L, 0L, 1L, 1L, 0L, 1L, 0L, 0L, 1L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 1L, 1L, 1L, 0L, 1L, 0L,
        0L, 1L, 1L, 1L, 0L, 1L, 1L, 0L, 1L, 1L, 1L, 1L)), class = "data.frame", row.names = c(NA, -100L))
    prodlim:::prodlim(formula = Hist(time, event) ~ X, data = CompRiskFrame)
}




