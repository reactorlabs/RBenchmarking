library(circlize)

function_to_run <- function() {
    w <- 1
    p2 <- structure(c(0.763450860705684, 0), names = c("theta", ""))
    p1 <- structure(c(0, 0.448762800274841), names = c("", "theta"))
    p0 <- structure(c(-0.763450860705684, 0), names = c("theta", ""))
    circlize:::quadratic.bezier(p0 = p0, p1 = p1, p2 = p2, w = w)
}




