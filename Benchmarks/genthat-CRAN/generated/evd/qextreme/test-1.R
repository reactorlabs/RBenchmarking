library(evd)

function_to_run <- function() {
    evd:::qextreme(p = seq(0.9, 0.6, -0.1), rate = 1.2, distn = "exp", mlen = 2)
}




