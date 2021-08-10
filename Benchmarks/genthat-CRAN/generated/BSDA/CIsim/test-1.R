library(BSDA)

function_to_run <- function() {
    BSDA:::CIsim(samples = 100, n = 50, mu = 0.5, conf.level = 0.9, type = "Pi")
}




