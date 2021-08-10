library(APCanalysis)

function_to_run <- function() {
    APCanalysis:::FDRpenalties(n = 8, k = 5, m = 5, fdr = 0.05, reps = 12000)
}




