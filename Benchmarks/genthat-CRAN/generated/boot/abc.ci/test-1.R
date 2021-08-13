

genthat_extracted_call <- function() {
    corr <- boot::corr
    bigcity <- boot::bigcity
    boot:::abc.ci(data = bigcity, statistic = corr, conf = c(0.9, 0.95))
}




