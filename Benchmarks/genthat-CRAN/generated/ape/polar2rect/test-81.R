library(ape)

function_to_run <- function() {
    r0 <- 1
    ape:::polar2rect(r = rep.int(r0, 100L), angle = seq(0, 2 * pi, length.out = 100L))
}




