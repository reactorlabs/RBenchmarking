library(bindata)

function_to_run <- function() {
    bindata:::simul.commonprob(margprob = seq(0, 1, 0.5), corr = seq(-1, 1, 0.5), method = "mo", n1 = 10^4)
}




