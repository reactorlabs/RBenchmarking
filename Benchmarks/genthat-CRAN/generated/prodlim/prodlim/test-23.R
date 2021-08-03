library(prodlim)

function_to_run <- function() {
    dat <- structure(list(L = 1:10, R = c(2, 3, 12, 8, 9, 10, 7, 12, 12, 12), status = c(1, 1, 0, 1, 1, 1, 1, 0, 0, 0), event = c(1,
        1, 1, 1, 1, 1, 1, 1, 1, 1)), row.names = c(NA, -10L), class = "data.frame")
    prodlim:::prodlim(formula = Hist(time = list(L, R), event) ~ 1, data = dat)
}




