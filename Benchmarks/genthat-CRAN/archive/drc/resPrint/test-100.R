library(drc)

function_to_run <- function() {
    SImat <- structure(c(0.543865532090877, 0.0942202652790273, -4.84115032533935, 2.35150854872265e-06), .Dim = c(1L, 4L), 
        .Dimnames = list("1/2:50.2224966477804/50.2224966477804", c("Estimate", "Std. Error", "t-value", "p-value")))
    interval <- "none"
    display <- FALSE
    ciLabel <- NULL
    drc:::resPrint(resMat = SImat, headerText = "Estimated ratios of effect doses", interval = interval, intervalLabel = ciLabel, 
        display = display)
}




