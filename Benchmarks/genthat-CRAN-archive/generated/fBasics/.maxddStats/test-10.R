

genthat_extracted_call <- function() {
    sd <- 1
    mean <- 0.5
    i <- 3L
    horizon <- c(10, 100, 1000, 10000)
    fBasics:::.maxddStats(mu = mean, sigma = sd, horizon = horizon[i])
}




