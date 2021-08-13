

genthat_extracted_call <- function() {
    rnorm <- stats::rnorm
    deadband:::deadbandBD(x = rnorm(40, mean = 0, sd = 1), d = 0.01, offset = 20, k = 2)
}




