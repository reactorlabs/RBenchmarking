library(prodlim)

function_to_run <- function() {
    rdat <- structure(list(time = c(1, 2, 3, 3, 3, 4, 5, 5, 6, 7), status = c(1, 0, 0, 1, 0, 1, 0, 1, 1, 0)), class = "data.frame",
        row.names = c(NA, -10L))
    prodlim:::prodlim(formula = Hist(time, status) ~ 1, data = rdat, reverse = TRUE)
}




