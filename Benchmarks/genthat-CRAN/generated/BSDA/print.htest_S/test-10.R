library(BSDA)

function_to_run <- function() {
    x <- structure(list(statistic = structure(17L, names = "s"), parameter = NULL, p.value = 1.52587890633882e-05, conf.int = structure(c(263.492243051067, 
        1149.20168067227), conf.level = 0.9), estimate = structure(450L, names = "median of x"), null.value = structure(0, 
        names = "median"), alternative = "two.sided", method = "One-sample Sign-Test", data.name = "Malpract$award", Confidence.Intervals = structure(c(0.8565, 
        0.9, 0.951, 275, 263.4922, 250, 850, 1149.2017, 1500), .Dim = c(3L, 3L), .Dimnames = list(c("Lower Achieved CI", 
        "Interpolated CI", "Upper Achieved CI"), c("Conf.Level", "L.E.pt", "U.E.pt")))), class = "htest_S")
    BSDA:::print.htest_S(x = x)
}




