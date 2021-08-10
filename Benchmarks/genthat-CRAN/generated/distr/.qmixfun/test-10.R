library(distr)

function_to_run <- function() {
    pnew.c <- genthat::with_env(function(q, lower.tail = TRUE, log.p = FALSE) {
        p0 <- as.vector(matrix(unlist(lapply(mixDistr, function(x) {
            p.lr <- if (pmatch(leftright, table = c("left", "right"), nomatch = 2) == 2) 
                p.l(x)
            else x@p
            do.call(p.lr, list(q = q, lower.tail = lower.tail))
        })), ncol = l, nrow = length(q)) %*% mixCoeff)
        if (log.p) 
            p0 <- log(p0)
        return(p0)
    }, env = list2env(list(p.l = distr::p.l, mixDistr = list(.ext.1), mixCoeff = 1, leftright = "right", l = 1L), parent = baseenv()))
    mixDistr.c <- list(.ext.2)
    mixCoeff.c <- 1
    distr:::.qmixfun(mixDistr = mixDistr.c, mixCoeff = mixCoeff.c, Cont = TRUE, pnew = pnew.c)
}




