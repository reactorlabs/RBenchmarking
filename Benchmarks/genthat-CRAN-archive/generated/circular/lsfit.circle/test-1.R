library(circular)

function_to_run <- function() {
    y.coope <- c(4, 4.7, 4, 1.3, -1.1, -3, -2.5, 1.3)
    x.coope <- c(0.7, 3.3, 5.6, 7.5, 6.4, 4.4, 0.3, -1.1)
    circular:::lsfit.circle(x = x.coope, y = y.coope)
}




