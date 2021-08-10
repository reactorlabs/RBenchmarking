library(circlize)

function_to_run <- function() {
    w <- 1
    p2 <- structure(c(0.2973361452031, 0), names = c("theta", ""))
    p1 <- structure(c(0, 0.834168139153329), names = c("", "theta"))
    p0 <- structure(c(-0.2973361452031, 0), names = c("theta", ""))
    circlize:::quadratic.bezier.length(p0 = p0, p1 = p1, p2 = p2, w = w)
}




