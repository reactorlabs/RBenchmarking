library(BBmisc)

function_to_run <- function() {
    xs2 <- list(b = 1, c = 4)
    xs1 <- list(a = 1, b = 2)
    BBmisc:::insert(xs1 = xs1, xs2 = xs2, elements = "c")
}




