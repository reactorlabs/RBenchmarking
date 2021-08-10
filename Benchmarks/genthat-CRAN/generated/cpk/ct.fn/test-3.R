library(cpk)

function_to_run <- function() {
    ke <- 0.1333
    cmax <- 15
    cpk:::ct.fn(cmax = cmax, ke = ke, time = 0)
}




