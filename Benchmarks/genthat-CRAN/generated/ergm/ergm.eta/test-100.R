library(ergm)

function_to_run <- function() {
    init <- structure(c(-5.51524663035104, 0.0871381914517668, 1.83643051672485), names = c("edges", "isolates", "gwesp.fixed.0.2"))
    etamap <- list(canonical = 1:3, offsetmap = c(FALSE, FALSE, FALSE), offset = c(FALSE, FALSE, FALSE), offsettheta = c(FALSE, 
        FALSE, FALSE), curved = list(), etalength = 3)
    ergm:::ergm.eta(theta = init, etamap = etamap)
}




