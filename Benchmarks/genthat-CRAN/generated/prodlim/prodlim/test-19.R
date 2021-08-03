library(prodlim)

function_to_run <- function() {
    dat <- structure(list(entry = c(7, 3, 11, 12, 11, 2, 1, 7, 15, 17, 3), time = 10:20, status = c(1, 0, 2, 2, 0, 0, 1,
        2, 0, 2, 0)), class = "data.frame", row.names = c(NA, -11L))
    prodlim:::prodlim(formula = Hist(time = time, event = status, entry = entry) ~ 1, data = dat)
}




