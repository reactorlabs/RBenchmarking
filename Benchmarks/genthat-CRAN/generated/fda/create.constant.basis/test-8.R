library(fda)

function_to_run <- function() {
    dayrange <- c(0, 365)
    fda:::create.constant.basis(rangeval = dayrange, axes = list("axesIntervals"))
}




