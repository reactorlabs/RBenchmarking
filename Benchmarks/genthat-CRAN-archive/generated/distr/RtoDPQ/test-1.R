

genthat_extracted_call <- function() {
    rn2 <- genthat::with_env(function(n) {
        rnorm(n)^2
    }, env = list2env(list(rnorm = stats::rnorm), parent = baseenv()))
    distr:::RtoDPQ(r = rn2, e = 4, n = 512)
}




