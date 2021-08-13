

genthat_extracted_call <- function() {
    z <- 1.95996398454005
    se.logit <- c(0.101913535155712, 0.110642968590703, 0.121572559441678)
    logit <- c(-0.107645480812983, -1.10795702308389, -0.951250255030453)
    effects:::logit2p(logit = logit + z * se.logit)
}




