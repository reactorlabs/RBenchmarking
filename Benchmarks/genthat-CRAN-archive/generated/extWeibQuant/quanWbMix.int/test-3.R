library(extWeibQuant)

function_to_run <- function() {
    tmix <- c(0, 130.175413055421, 0.45248897046522, 0.54751102953478, 3.26379126420342, 13.066417993141, 8.34484054773743, 
        6.1045705101993)
    qInt <- 0.05
    extWeibQuant:::quanWbMix.int(intProb = qInt, mixmx = tmix[-c(1, 2)])
}




