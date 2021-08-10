library(fdrtool)

function_to_run <- function() {
    fdrtool:::gcmlcm(x = environment(F)$x, y = environment(F)$y, type = "lcm")
}




