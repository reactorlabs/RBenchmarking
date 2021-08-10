library(ape)

function_to_run <- function() {
    rcoal <- ape::rcoal
    ape:::makeNodeLabel(phy = rcoal(20))
}




