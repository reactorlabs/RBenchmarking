library(conf.design)

function_to_run <- function() {
    f <- structure(1:6, .Label = c("1", "2", "3", "4", "5", "6"), class = "factor")
    conf.design:::factorize.factor(x = f)
}




