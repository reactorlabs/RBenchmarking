

genthat_extracted_call <- function() {
    dnorm <- stats::dnorm
    distrEx:::GLIntegrate(f = dnorm, lower = -1.96, upper = 1.96)
}




