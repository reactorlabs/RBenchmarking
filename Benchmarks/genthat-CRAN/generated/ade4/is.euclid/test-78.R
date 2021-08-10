library(ade4)

function_to_run <- function() {
    triinftodist <- genthat::with_env(function(x) {
        n0 <- length(x)
        n <- sqrt(1 + 8 * n0)
        n <- (1 + n)/2
        a <- matrix(0, ncol = n, nrow = n)
        a[row(a) > col(a)] <- x
        a <- a + t(a)
        return(a)
    }, env = list2env(list(), parent = baseenv()))
    retval <- structure(list(c(0.8, 0.8, 0.377350269, 0.8, 0.377350269, 0.377350269)), size = 4, labels = c("1", "2", "3", 
        "4"))
    i <- 1L
    epsi <- 1e-07
    as.dist <- stats::as.dist
    ade4:::is.euclid(distmat = as.dist(triinftodist(retval[[i]])), tol = epsi)
}




