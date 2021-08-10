library(boot)

function_to_run <- function() {
    sim <- "geom"
    R <- 99
    n.sim <- 114
    n <- 103L
    l <- 20
    endcorr <- TRUE
    boot:::ts.array(n = n, n.sim = n.sim, R = R, l = l, sim = sim, endcorr = endcorr)
}




