library(fBasics)

function_to_run <- function() {
    p <- c(0, 1)
    lambdas <- c(0.00472916055896999, -0.999192329855634, -0.127348249081912, -0.116552179189402)
    fBasics:::.qgl.rs(p = p, lambdas = lambdas)
}




