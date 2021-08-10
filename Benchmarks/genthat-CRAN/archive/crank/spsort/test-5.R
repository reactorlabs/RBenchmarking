library(crank)

function_to_run <- function() {
    matComp <- structure(c("ASD", "DFE", "ASD", "SDR", "EDF", "ASD", "SDR", "EDF", "KLM", "KLM", "SDR", "EDF"), .Dim = c(6L, 
        2L), .Dimnames = list(NULL, c("Smaller", "Larger")))
    crank:::spsort(x = matComp)
}




