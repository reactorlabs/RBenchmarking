

genthat_extracted_call <- function() {
    binom:::binom.bayes(x = 0:10, n = 10, conf.level = 0.8, type = "highest", tol = 1e-09)
}




