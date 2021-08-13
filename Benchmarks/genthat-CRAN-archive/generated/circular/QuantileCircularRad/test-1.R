

genthat_extracted_call <- function() {
    x <- c(2.1948447150578, 1.50595517282692, 0.904865990550643, 0.12374230570441, -0.502719282106137, -1.22327604293455, 
        -2.27249541486243, 3.00859279658184)
    type <- 7
    probs <- c(0, 0.25, 0.5, 0.75, 1)
    names <- TRUE
    circular:::QuantileCircularRad(x = x, probs = probs, names = names, type = type)
}




