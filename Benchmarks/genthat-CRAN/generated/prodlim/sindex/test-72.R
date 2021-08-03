library(prodlim)

function_to_run <- function() {
    strict <- FALSE
    jump.times <- c(0.961818958952663, 0.961818958952663, 0.961818958952663, 0.961818958952663, 0.904908429291766, 0.904908429291766,
        0.833924247005267, 0.833924247005267, 0.833924247005267, 0.741936944990609, 0.741936944990609, 0.741936944990609,
        0.566983350213245, 0.566983350213245)
    eval.times <- 0.5
    prodlim:::sindex(jump.times = jump.times, eval.times = eval.times, comp = "smaller", strict = !strict)
}




