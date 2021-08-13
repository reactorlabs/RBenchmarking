

genthat_extracted_call <- function() {
    ticks <- c(-2, 0, 2, 4, 6, 8, 10)
    shift <- 0.1
    power <- 0.333333333333333
    car:::bcnPowerInverse(z = ticks[ticks > 0], lambda = power, gamma = shift)
}




