library(circular)

function_to_run <- function() {
    circular:::rpnorm(n = 100, mu = c(0, 0), sigma = diag(2), control.circular = list(units = "degrees"))
}




