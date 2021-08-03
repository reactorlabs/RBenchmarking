library(prodlim)

function_to_run <- function() {
    time <- c(0.35, 0.4, 0.51, 0.51, 0.7, 0.73)
    status <- c(0, 1, 1, 0, 0, 1)
    prodlim <- prodlim::prodlim
    prodlim:::summary.prodlim(object = f <- prodlim(Hist(time, status) ~ 1, data = data.frame(time, status)), times = c(0,
        time), percent = TRUE)
}




