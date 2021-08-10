library(circular)

function_to_run <- function() {
    circular <- circular::circular
    circular:::rkatojones(n = 100, mu = circular(0), nu = circular(pi/4), r = 0.2, kappa = 1)
}




