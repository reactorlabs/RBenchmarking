library(Amelia)

function_to_run <- function() {
    which.vars <- structure(c(3L, 5L), names = c("gdp_pc", "trade"))
    overimpute <- FALSE
    Amelia:::set.mfrow(nvars = length(which.vars), overimpute = overimpute)
}




