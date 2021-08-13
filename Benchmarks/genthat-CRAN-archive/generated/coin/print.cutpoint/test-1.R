

genthat_extracted_call <- function() {
    x <- structure(list(statistic = structure(4.31387981095091, names = "maxT"), p.value = structure(0.000172974837863604, 
        conf.int = structure(c(2.98051784137776e-05, 0.000316144497313431), conf.level = 0.99), class = c("pvalue", "numeric")), 
        alternative = "two.sided", data.name = "counts by coverstorey", method = "Asymptotic Generalized Maximally Selected Statistics", 
        estimate = structure(list(cutpoint = 40L, label = "<= 40"), class = c("cutpoint", "list"))), class = "htest2")
    digits <- 7L
    coin:::print.cutpoint(x = x$estimate, digits = digits)
}




