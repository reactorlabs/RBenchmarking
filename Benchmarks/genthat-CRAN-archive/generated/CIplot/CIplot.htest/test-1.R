

genthat_extracted_call <- function() {
    x <- structure(list(statistic = structure(5, names = "number of successes"), parameter = structure(20, names = "number of trials"), 
        p.value = 0.0413894653320313, conf.int = structure(c(0.0865714691014346, 0.491045871707958), conf.level = 0.95), 
        estimate = structure(0.25, names = "probability of success"), null.value = structure(0.5, names = "probability of success"), 
        alternative = "two.sided", method = "Exact binomial test", data.name = "5 and 20"), class = "htest")
    CIplot:::CIplot.htest(x = x, xlim = c(0, 1))
}




