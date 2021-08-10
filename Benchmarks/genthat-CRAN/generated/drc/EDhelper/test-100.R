library(drc)

function_to_run <- function() {
    type <- "relative"
    respl <- 45.701863367275
    reference <- "control"
    parmVec <- c(1.72103124525308, 149.657679063387, 984.293912987058, 93.9773713768076, 1)
    drc:::EDhelper(parmVec = parmVec, respl = respl, reference = reference, typeCalc = type)
}




