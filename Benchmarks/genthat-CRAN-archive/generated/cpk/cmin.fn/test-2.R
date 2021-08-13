library(cpk)

function_to_run <- function() {
    ke <- 0.318
    di <- 4
    cmax <- 0.006
    cpk:::cmin.fn(cmax = cmax, ke = ke, di = di)
}




