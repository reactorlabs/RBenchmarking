library(ape)

function_to_run <- function() {
    v <- structure(c(0.00992730043675438, 0.00992731214723868, 0.651353148162077, 0.843781254081055, 1), names = c("Order", 
        "SuperFamily", "Family", "Genus", "Within"), class = "varcomp")
    ape:::plot.varcomp(x = v)
}




