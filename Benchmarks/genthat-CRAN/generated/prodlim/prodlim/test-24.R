library(prodlim)

function_to_run <- function() {
    dat <- structure(list(time = 1:10, status = c(1, 2, 1, 2, 5, 5, 1, 1, 2, 2)), class = "data.frame", row.names = c(NA,
        -10L))
    prodlim:::prodlim(formula = Hist(time, status) ~ 1, data = dat)
}




