library(prodlim)

function_to_run <- function() {
    times <- c(3, 5)
    time <- c(0.836736115633699, 1.21539126795391, 1.82132226826408, 2.20688663795295, 2.28403441657353, 2.58908125548376,
        3.37065111669117, 5.7248465289322)
    prodlim:::sindex(jump.times = time, eval.times = times)
}




