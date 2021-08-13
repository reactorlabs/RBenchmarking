

genthat_extracted_call <- function() {
    minuslogl <- genthat::with_env(function(ymax = 15, xhalf = 6) {
        -sum(stats::dpois(y, lambda = ymax/(1 + x/xhalf), log = TRUE))
    }, env = list2env(list(y = c(26, 17, 13, 12, 20, 5, 9, 8, 5, 4, 8), x = 0:10), parent = baseenv()))
    bbmle:::parnames(obj = minuslogl)
}




