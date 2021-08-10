library(binom)

function_to_run <- function() {
    binom.wilson <- binom::binom.wilson
    binom:::binom.optim(n = 3, method = binom.wilson)
}




