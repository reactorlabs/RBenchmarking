library(distr)

function_to_run <- function() {
    rp2 <- genthat::with_env(function(n) {
        rpois(n, lambda = 1)^2
    }, env = list2env(list(rpois = stats::rpois), parent = baseenv()))
    distr:::RtoDPQ.d(r = rp2, e = 5)
}




