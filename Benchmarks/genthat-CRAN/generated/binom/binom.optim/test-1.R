

genthat_extracted_call <- function() {
    binom.wilson <- binom::binom.wilson
    binom:::binom.optim(n = 3, method = binom.wilson)
}




