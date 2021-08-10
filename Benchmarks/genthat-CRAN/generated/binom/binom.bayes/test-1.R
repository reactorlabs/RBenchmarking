library(binom)

function_to_run <- function() {
    binom:::binom.bayes(x = 0:10, n = 10, conf.level = 0.8, type = "highest", tol = 1e-09)
}




