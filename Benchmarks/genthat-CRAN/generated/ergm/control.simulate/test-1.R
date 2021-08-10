library(ergm)

function_to_run <- function() {
    ergm:::control.simulate(MCMC.burnin = 1e+05, MCMC.interval = 1000)
}




