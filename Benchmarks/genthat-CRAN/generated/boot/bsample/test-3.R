library(boot)

function_to_run <- function() {
    R <- 999
    gp <- 1:13
    boot:::bsample(x = gp, R * length(gp))
}




