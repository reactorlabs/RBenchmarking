library(prodlim)

function_to_run <- function() {
    SurvFrame <- structure(list(time = 1:10, status = c(1L, 1L, 0L, 1L, 1L, 1L, 1L, 0L, 1L, 1L)), class = "data.frame", row.names = c(NA,
        -10L))
    prodlim:::prodlim(formula = Hist(time = time, status != 0) ~ 1, data = SurvFrame)
}




