library(arm)

function_to_run <- function() {
    digits <- 2
    coef <- structure(c(1.17284149525564, 1.33497482330636, 1.7839410870159, 0.334789855161334, 0.322768702445385, 0.709524370921534), 
        .Dim = 3:2, .Dimnames = list(c("(Intercept)", "x1", "x2"), c("coef.est", "coef.se")))
    arm:::pfround(x = coef, digits = digits)
}




