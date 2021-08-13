

genthat_extracted_call <- function() {
    q.l0 <- genthat::with_env(function(p, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE) .Call(C_qnorm, p, mean, sd, 
        lower.tail, log.p), env = getNamespace("stats"))
    ngrid <- 4096
    distr:::.Q2P(q = q.l0, ngrid = ngrid)
}




